package com.ahsim.demulation;

import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;

/* loaded from: classes2.dex */
public final class RazorVramPatternLoader {
    private static final int BASE_POINTER_OFFSET = 164006;
    private static final int COUNT_POINTER_OFFSET = 164002;
    public static final int METATILE_BANK_BYTES = 16384;
    private static final int METATILE_BASE = 369296;
    public static final int METATILE_COUNT = 512;
    private static final String METATILE_SHA = "ec3de0c8f15e60ffdbd91ec5c2f5fbcf4b1b4cc4fbdbd2cf129a3702c041f5fd";
    public static final int PATTERN_BANK_BYTES = 29568;
    public static final int PATTERN_BYTES = 32;
    public static final int PATTERN_COUNT = 924;
    private static final String PATTERN_SHA = "15710e8495eba408941dcb2013170d7850170eb34edf9a3bf1c83cd8f8079057";
    private static final int[] METATILE_POINTER_SITES_RAZOR1 = {12170, 12942, 16676, 16922};
    private static final int[] METATILE_POINTER_SITES_RAZOR2 = {12446, 13218, 16952, 17198};
    private static final byte[] NEXT_BLOCK = {70, 79, 82, 77};

    public static final class Result {
        public final boolean compiledMetatilesVerified;
        public final boolean gameplayReady;
        public final int metatileCount;
        public final String metatileSha256;
        public final int metatileSourceOffset;
        private final byte[] metatiles;
        public final int patternCount;
        public final String patternSha256;
        public final int patternSourceOffset;
        private final byte[] patterns;
        public final boolean sourcePatternsVerified;

        private Result(int romOffset, byte[] patternBytes, byte[] metatileBytes) throws IOException {
            this.patternCount = RazorVramPatternLoader.PATTERN_COUNT;
            this.metatileCount = 512;
            this.metatileSourceOffset = RazorVramPatternLoader.METATILE_BASE;
            this.sourcePatternsVerified = true;
            this.compiledMetatilesVerified = true;
            this.gameplayReady = false;
            this.patternSourceOffset = romOffset;
            this.patterns = (byte[]) patternBytes.clone();
            this.metatiles = (byte[]) metatileBytes.clone();
            this.patternSha256 = RazorVramPatternLoader.sha256(this.patterns);
            this.metatileSha256 = RazorVramPatternLoader.sha256(this.metatiles);
        }

        public byte[] patternBankCopy() {
            return (byte[]) this.patterns.clone();
        }

        public byte[] metatileBankCopy() {
            return (byte[]) this.metatiles.clone();
        }

        public int patternByte(int index, int byteIndex) {
            if (index < 0 || index >= 924 || byteIndex < 0 || byteIndex >= 32) {
                throw new IllegalArgumentException("Razor pattern coordinate outside bank");
            }
            return this.patterns[(index * 32) + byteIndex] & 255;
        }

        public int metatileAttribute(int id, int cellX, int cellY) {
            if (id < 0 || id >= 512 || cellX < 0 || cellX >= 4 || cellY < 0 || cellY >= 4) {
                throw new IllegalArgumentException("Razor compiled metatile coordinate invalid");
            }
            return RazorVramPatternLoader.u16(this.metatiles, (id * 32) + (((cellY * 4) + cellX) * 2));
        }

        public int[] decodeMetatile(byte[] fourPalettes, int variant, int tileId) throws IOException {
            return RazorTerrainVisualSource.decodeVerifiedTile(this.patterns, this.metatiles, fourPalettes, variant, tileId);
        }
    }

    private RazorVramPatternLoader() {
    }

    public static Result inspect(byte[] rom, String verifiedSha256) throws IOException {
        int[] pointerSites;
        if (rom == null || verifiedSha256 == null || !verifiedSha256.equalsIgnoreCase(sha256(rom))) {
            throw new IOException("Razor VRAM requires verified source ROM");
        }
        if (rom.length < 164010 || u32(rom, COUNT_POINTER_OFFSET) != 924) {
            throw new IOException("Razor base VRAM pattern count not confirmed");
        }
        long baseLong = u32(rom, BASE_POINTER_OFFSET);
        if (baseLong < 0 || baseLong > (rom.length - 29568) - NEXT_BLOCK.length) {
            throw new IOException("Razor base VRAM ROM pointer out of range");
        }
        int base = (int) baseLong;
        for (int i = 0; i < NEXT_BLOCK.length; i++) {
            if (rom[base + PATTERN_BANK_BYTES + i] != NEXT_BLOCK[i]) {
                throw new IOException("Razor base VRAM block boundary changed");
            }
        }
        if (base == 1747258) {
            pointerSites = METATILE_POINTER_SITES_RAZOR1;
        } else {
            pointerSites = base == 545926 ? METATILE_POINTER_SITES_RAZOR2 : null;
        }
        if (pointerSites == null) {
            throw new IOException("Unknown Razor R82C VRAM layout");
        }
        for (int offset : pointerSites) {
            if (offset + 4 > rom.length || u32(rom, offset) != 369296) {
                throw new IOException("Razor compiled metatile pointer changed");
            }
        }
        if (METATILE_BASE > rom.length - 16384) {
            throw new IOException("Razor metatile table truncated");
        }
        byte[] bank = Arrays.copyOfRange(rom, base, base + PATTERN_BANK_BYTES);
        byte[] attrs = Arrays.copyOfRange(rom, METATILE_BASE, 385680);
        if (!PATTERN_SHA.equals(sha256(bank)) || !METATILE_SHA.equals(sha256(attrs))) {
            throw new IOException("Razor compiled VRAM/metatile content differs from both verified samples");
        }
        for (int i2 = 0; i2 < attrs.length; i2 += 2) {
            if ((u16(attrs, i2) & 2047) >= 924) {
                throw new IOException("Razor metatile addresses unloaded VRAM pattern");
            }
        }
        return new Result(base, bank, attrs);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int u16(byte[] data, int pos) {
        return ((data[pos] & 255) << 8) | (data[pos + 1] & 255);
    }

    private static long u32(byte[] data, int pos) {
        return (u16(data, pos) << 16) | u16(data, pos + 2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String sha256(byte[] data) throws IOException {
        try {
            byte[] digest = MessageDigest.getInstance("SHA-256").digest(data);
            StringBuilder out = new StringBuilder(64);
            for (byte b : digest) {
                out.append(Character.forDigit((b >>> 4) & 15, 16));
                out.append(Character.forDigit(b & 15, 16));
            }
            return out.toString();
        } catch (NoSuchAlgorithmException e) {
            throw new IOException("SHA-256 unavailable", e);
        }
    }
}
