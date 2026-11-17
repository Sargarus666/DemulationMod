package com.ahsim.demulation;

import com.ahsim.demulation.RazorSpriteBankAudit;
import java.io.IOException;
import java.lang.reflect.Array;
import java.util.Arrays;

/* loaded from: classes2.dex */
public final class RazorSpriteCfgRelocation {
    private static final int CONFIG_SIZE = 14;
    public static final int GROUPS = 2;
    private static final int NO_LOAD_GFX = 2130706432;
    public static final int POSES = 5;
    private static final int STD_UNIT_SPR = 134217728;
    public static final int TILE_BASE = 1419;
    public static final int VRAM_TILE_BASE = 922;
    public static final int PTR_TABLE_BASE = 545106;
    public static final int[] POINTER_SLOTS = {PTR_TABLE_BASE, 545170};
    private static final int[] ROM1_CONFIG = {1828870, 1852048};
    private static final int[] ROM2_CONFIG = {627550, 650728};
    private static final int[] ROM_UNITS_BANK = {0, 1774206, 572886};

    public static final class Frame {
        public final int frameHeight;
        public final int frameWidth;
        public final int group;
        private final byte[] pixels;
        public final int pose;
        public final int relativeX;
        public final int relativeY;
        public final int romCfgAddress;
        public final int romPointerSlot;
        public final int vramTile;

        private Frame(int group, int pose, int ptr, int cfg, int tile, byte[] image) {
            this.group = group;
            this.pose = pose;
            this.romPointerSlot = ptr;
            this.romCfgAddress = cfg;
            this.vramTile = tile;
            this.frameWidth = 16;
            this.frameHeight = 16;
            this.relativeX = -8;
            this.relativeY = -8;
            this.pixels = (byte[]) image.clone();
        }

        public byte[] pixelsCopy() {
            return (byte[]) this.pixels.clone();
        }
    }

    public static final class Result {
        private final Frame[][] frames;
        public final boolean gameplayReady;
        public final boolean orientationSequenceKnown;
        public final boolean originalPaletteKnown;
        public final boolean structureArtworkReady;
        public final int variant;
        public final int verifiedFrames;

        private Result(int edition, Frame[][] found) {
            this.verifiedFrames = 10;
            this.originalPaletteKnown = false;
            this.orientationSequenceKnown = false;
            this.structureArtworkReady = false;
            this.gameplayReady = false;
            this.variant = edition;
            this.frames = found;
        }

        public Frame frame(int group, int pose) {
            if (group < 0 || group >= 2 || pose < 0 || pose >= 5) {
                throw new IllegalArgumentException("Unverified Razor CFG frame");
            }
            return this.frames[group][pose];
        }
    }

    private RazorSpriteCfgRelocation() {
    }

    public static Result inspect(byte[] authenticatedRom, String expectedSha256) throws IOException {
        int tileSrc;
        byte[] bArr = authenticatedRom;
        RazorSpriteBankAudit.Result bank = RazorSpriteBankAudit.inspect(authenticatedRom, expectedSha256);
        int v = bank.variant;
        int i = 2;
        if (v != 1 && v != 2) {
            throw new IOException("Not an attested Razor edition");
        }
        int[] cfgBases = v == 1 ? ROM1_CONFIG : ROM2_CONFIG;
        int i2 = 5;
        Frame[][] frame = (Frame[][]) Array.newInstance((Class<?>) Frame.class, 2, 5);
        int g = 0;
        while (g < i) {
            int pose = 0;
            while (pose < i2) {
                int slot = POINTER_SLOTS[g] + (pose * 8);
                int cfg = cfgBases[g] + (pose * 14);
                requireRange(bArr, slot, 8);
                requireRange(bArr, cfg, 14);
                int gfxPtr = i32(bArr, slot);
                int cfgPtr = i32(bArr, slot + 4);
                if (gfxPtr != NO_LOAD_GFX || cfgPtr != (STD_UNIT_SPR | cfg)) {
                    throw new IOException("Razor CFG pointer mismatch at " + hex(slot));
                }
                int count = u16(bArr, cfg);
                int width = u16(bArr, cfg + 2);
                int height = u16(bArr, cfg + 4);
                int y = (short) u16(bArr, cfg + 6);
                int spriteSize = u16(bArr, cfg + 8);
                int tileAttr = u16(bArr, cfg + 10);
                int[] cfgBases2 = cfgBases;
                int x = (short) u16(bArr, cfg + 12);
                int gfxPtr2 = pose * 4;
                int tile = gfxPtr2 + TILE_BASE;
                if (count == 0) {
                    int g2 = g;
                    if (width == 16 && height == 16 && y == -8 && x == -8 && spriteSize == 1280 && tileAttr == tile) {
                        int tileAttr2 = tile - 922;
                        int tileSrc2 = (tileAttr2 * 32) + ROM_UNITS_BANK[v];
                        requireRange(bArr, tileSrc2, 128);
                        byte[] out = new byte[256];
                        String label = "trike" + (pose + 1) + ".smd";
                        byte[] verified = bank.verifiedBlockCopy(label);
                        int y2 = verified.length;
                        if (y2 != 128 || !Arrays.equals(verified, Arrays.copyOfRange(bArr, tileSrc2, tileSrc2 + 128))) {
                            throw new IOException("Razor CFG tile has wrong graphic bytes");
                        }
                        int tx = 0;
                        while (true) {
                            if (tx < 2) {
                                int ty = 0;
                                for (int i3 = 2; ty < i3; i3 = 2) {
                                    int pattern = (tx * 2) + ty;
                                    int ty2 = ty;
                                    byte[] indices = bank.patternPixels(label, pattern);
                                    RazorSpriteBankAudit.Result bank2 = bank;
                                    int row = 0;
                                    while (true) {
                                        tileSrc = tileSrc2;
                                        if (row < 8) {
                                            System.arraycopy(indices, row * 8, out, (((ty2 * 8) + row) * 16) + (tx * 8), 8);
                                            row++;
                                            tileSrc2 = tileSrc;
                                            label = label;
                                        }
                                    }
                                    ty = ty2 + 1;
                                    tileSrc2 = tileSrc;
                                    bank = bank2;
                                    label = label;
                                }
                                tx++;
                                label = label;
                            }
                        }
                        g = g2;
                        frame[g2][pose] = new Frame(g, pose, slot, cfg, tile, out);
                        pose++;
                        bArr = authenticatedRom;
                        i = 2;
                        cfgBases = cfgBases2;
                        bank = bank;
                        i2 = 5;
                    }
                }
                throw new IOException("Razor CFG geometry/VRAM mismatch at " + hex(cfg));
            }
            g++;
            bArr = authenticatedRom;
            i2 = 5;
        }
        return new Result(v, frame);
    }

    private static void requireRange(byte[] data, int at, int size) throws IOException {
        if (data == null || at < 0 || size < 0 || at > data.length - size) {
            throw new IOException("Razor ROM pointer out of range: " + hex(at));
        }
    }

    private static int u16(byte[] data, int offset) {
        return ((data[offset] & 255) << 8) | (data[offset + 1] & 255);
    }

    private static int i32(byte[] data, int offset) {
        return (u16(data, offset) << 16) | u16(data, offset + 2);
    }

    private static String hex(int n) {
        return "0x" + Integer.toHexString(n);
    }
}
