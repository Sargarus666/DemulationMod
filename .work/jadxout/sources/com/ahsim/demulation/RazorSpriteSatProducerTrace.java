package com.ahsim.demulation;

import com.ahsim.demulation.RazorSpriteSatCallGraphAudit;
import java.io.IOException;

/* loaded from: classes2.dex */
public final class RazorSpriteSatProducerTrace {
    public static final int SAT_COUNTER_RAM = 16770080;
    public static final int SAT_MAX_BYTES = 640;
    public static final int SAT_MAX_SLOTS = 80;
    public static final int SAT_RAM_BASE = 16770088;
    public static final int SAT_SLOT_BYTES = 8;
    public static final int SAT_VDP_CONTROL = 12582916;
    public static final int SAT_VDP_DATA = 12582912;
    public static final int SAT_VRAM_BASE = 61440;
    private static final int[] SAT_UPLOADER = {0, 14478, 14754};
    private static final int[] SAT_BASE_CONFIG = {0, 9712, 9686};
    private static final int[] BUFFER_PREP = {0, 4968, 4936};
    private static final int[] COUNTER_WRITER = {0, 5340, 5308};
    private static final int[] BUFFER_DMA_SETUP = {0, 8986, 8960};
    private static final byte[] SAT_UPLOAD = bytes("43f900c0000045e9000424bc7000000341f8e4283238e420e8490c4100136f0272132298229822982298229822982298229851c9ffee24bc74000003");
    private static final byte[] SAT_REG5 = bytes("33fc857800c00004");
    private static final byte[] BUFFER_ANCHOR = bytes("48e73f3e244840e7007c07004e6747f8e428");
    private static final byte[] COUNTER_ANCHOR = bytes("31c7e420");
    private static final byte[] DMA_ANCHOR = bytes("41f8e4282008028000ffffffe288323c9500");

    public static final class Result {
        public final int bufferPreparationOffset;
        public final int counterWriterOffset;
        public final int dmaSetupOffset;
        public final int edition;
        public final boolean gameObjectToSatSlotVerified;
        public final boolean gameplaySpritesMayBeDrawn;
        public final boolean hardwareFlipFlagsVerified;
        public final boolean hardwareSatUploadVerified;
        public final boolean objectSpriteCfgAndPoseVerified;
        public final int satBaseConfigOffset;
        public final boolean satCounterWriterVerified;
        public final boolean satRamPreparationAnchorVerified;
        public final int satUploaderOffset;

        private Result(int e) {
            this.hardwareSatUploadVerified = true;
            this.satRamPreparationAnchorVerified = true;
            this.satCounterWriterVerified = true;
            this.gameObjectToSatSlotVerified = false;
            this.objectSpriteCfgAndPoseVerified = false;
            this.hardwareFlipFlagsVerified = false;
            this.gameplaySpritesMayBeDrawn = false;
            this.edition = e;
            this.satUploaderOffset = RazorSpriteSatProducerTrace.SAT_UPLOADER[e];
            this.satBaseConfigOffset = RazorSpriteSatProducerTrace.SAT_BASE_CONFIG[e];
            this.bufferPreparationOffset = RazorSpriteSatProducerTrace.BUFFER_PREP[e];
            this.counterWriterOffset = RazorSpriteSatProducerTrace.COUNTER_WRITER[e];
            this.dmaSetupOffset = RazorSpriteSatProducerTrace.BUFFER_DMA_SETUP[e];
        }

        public int resolvedSlotForObject(int unitType, int objectIndex) throws IOException {
            throw new IOException("Razor per-object SAT slot producer is not yet traced");
        }

        public int resolvedSpriteAttributeForObject(int unitType, int facing) throws IOException {
            throw new IOException("Razor object->pose/flip/CRAM SAT linkage is not yet traced");
        }
    }

    private RazorSpriteSatProducerTrace() {
    }

    public static Result inspect(byte[] rom, String sha256) throws IOException {
        RazorSpriteSatCallGraphAudit.Result prev = RazorSpriteSatCallGraphAudit.inspect(rom, sha256);
        int edition = prev.edition;
        if (edition < 1 || edition > 2) {
            throw new IOException("Unsupported Razor edition");
        }
        witness(rom, SAT_UPLOADER[edition], SAT_UPLOAD, "SAT upload program");
        witness(rom, SAT_BASE_CONFIG[edition], SAT_REG5, "VDP SAT base register");
        witness(rom, BUFFER_PREP[edition], BUFFER_ANCHOR, "RAM sprite buffer preparation");
        witness(rom, COUNTER_WRITER[edition], COUNTER_ANCHOR, "SAT work RAM counter");
        witness(rom, BUFFER_DMA_SETUP[edition], DMA_ANCHOR, "separate VDP DMA setup");
        if (vramAddressFromWriteCommand(1879048195) != 61440 || SAT_UPLOAD.length != 60) {
            throw new IOException("Contradictory Genesis SAT register/command evidence");
        }
        return new Result(edition);
    }

    public static int uploadBytesForRawCounter(int rawWord) {
        if (rawWord < 0 || rawWord > 65535) {
            throw new IllegalArgumentException("16-bit counter required");
        }
        return (Math.min(rawWord >>> 4, 19) + 1) * 32;
    }

    public static int vramAddressFromWriteCommand(int command) {
        return ((command >>> 16) & 16383) | ((command & 3) << 14);
    }

    private static void witness(byte[] src, int at, byte[] pattern, String role) throws IOException {
        if (src == null || at < 0 || at > src.length - pattern.length) {
            throw new IOException("Out-of-range " + role);
        }
        for (int i = 0; i < pattern.length; i++) {
            if (src[at + i] != pattern[i]) {
                throw new IOException("Invalid " + role + " at ROM +0x" + Integer.toHexString(at + i));
            }
        }
    }

    private static byte[] bytes(String hex) {
        byte[] result = new byte[hex.length() / 2];
        for (int i = 0; i < result.length; i++) {
            result[i] = (byte) Integer.parseInt(hex.substring(i * 2, (i * 2) + 2), 16);
        }
        return result;
    }
}
