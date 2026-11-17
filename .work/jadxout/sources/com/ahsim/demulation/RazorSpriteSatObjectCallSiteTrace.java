package com.ahsim.demulation;

import com.ahsim.demulation.RazorSpriteSatRecordWriterTrace;
import java.io.IOException;
import java.util.Locale;
import java.util.Objects;

/* loaded from: classes2.dex */
public final class RazorSpriteSatObjectCallSiteTrace {
    public static final int DISPLAY_HEAD_RAM = 16774060;
    public static final int NODE_BYTES = 16;
    public static final int SAT_BYTES_PER_RECORD = 8;
    public static final int SOURCE_BYTE_OFFSET = 104;
    private static final int[] ENQUEUE = {0, 4838, 4806};
    private static final int[] PRODUCE = {0, 4968, 4936};
    private static final int[] XY_OFFSETS = {0, 0, 0, -1, 1, 0, 0, -1, 1, 0, 0, 0, 1, 0, 0, 0};
    private static final byte[] REGISTRATION = hex("48e700302649346b00024a6b00026768376a000e000224802541000425480008");
    private static final byte[] NODE_FIELDS = hex("24802541000425480008");
    private static final byte[] NODE_PRODUCER = hex("48e73f3e244840e7007c07004e6747f8e428");
    private static final byte[] INPUT = hex("225238193a11080600066656");
    private static final byte[] FACING_LOOKUP = hex("0806000267461029006602400007d040d040d87b0018da7b0016");
    private static final byte[] REGISTER_JSR_PREFIX = hex("4eb8");

    public static final class Result {
        public final int edition;
        public final boolean gameplaySpritesMayBeDrawn;
        public final boolean layoutDataAndFlagsReadVerified;
        public final boolean lowThreeBitOffsetTableVerified;
        public final boolean nodeEntryToSatWriterVerified;
        public final int nodeRegistrationCallSites;
        public final int nodeRegistrationEntry;
        public final int satProducerCallSites;
        public final int satProducerEntry;
        public final boolean sourceIsUnitBodyFacingVerified;
        public final int sourceOffset;
        public final boolean unitToSatSlotVerified;
        public final boolean unitTypeToCfgFrameVerified;

        private Result(int e, int nodes, int writers) {
            this.sourceOffset = RazorSpriteSatObjectCallSiteTrace.SOURCE_BYTE_OFFSET;
            this.nodeEntryToSatWriterVerified = true;
            this.layoutDataAndFlagsReadVerified = true;
            this.lowThreeBitOffsetTableVerified = true;
            this.sourceIsUnitBodyFacingVerified = false;
            this.unitTypeToCfgFrameVerified = false;
            this.unitToSatSlotVerified = false;
            this.gameplaySpritesMayBeDrawn = false;
            this.edition = e;
            this.nodeRegistrationEntry = RazorSpriteSatObjectCallSiteTrace.ENQUEUE[e];
            this.satProducerEntry = RazorSpriteSatObjectCallSiteTrace.PRODUCE[e];
            this.nodeRegistrationCallSites = nodes;
            this.satProducerCallSites = writers;
        }

        public int[] displayOffsetForIndex(int index) {
            if (index < 0 || index > 7) {
                throw new IllegalArgumentException("Index must be 0..7");
            }
            return new int[]{RazorSpriteSatObjectCallSiteTrace.XY_OFFSETS[index * 2], RazorSpriteSatObjectCallSiteTrace.XY_OFFSETS[(index * 2) + 1]};
        }

        public int satSlotForUnit(int type, int facing) throws IOException {
            throw new IOException("Unit->display node->SAT slot has not been established by ROM execution");
        }

        public int cfgFrameForUnit(int type, int facing) throws IOException {
            throw new IOException("Unit->CFG frame and H/V reflection have not been established");
        }
    }

    private RazorSpriteSatObjectCallSiteTrace() {
    }

    public static Result inspect(byte[] rom, String sha256) throws IOException {
        RazorSpriteSatRecordWriterTrace.Result parent = RazorSpriteSatRecordWriterTrace.inspect(rom, sha256);
        int e = parent.edition;
        require(rom, ENQUEUE[e], hex("48e70030"), "node registration prologue");
        require(rom, ENQUEUE[e] + 22, NODE_FIELDS, "node payload fields");
        require(rom, PRODUCE[e], NODE_PRODUCER, "SAT producer entry");
        require(rom, PRODUCE[e] + 138, INPUT, "node input and flag check");
        require(rom, PRODUCE[e] + 160, FACING_LOOKUP, "relative offset lookup");
        int table = PRODUCE[e] + 204;
        for (int i = 0; i < 8; i++) {
            int x = signedWord(rom, (i * 4) + table);
            int y = signedWord(rom, (i * 4) + table + 2);
            if (x != XY_OFFSETS[i * 2] || y != XY_OFFSETS[(i * 2) + 1]) {
                throw new IOException("Mismatched ROM relative offset table at index " + i);
            }
        }
        int[] heads = new int[2];
        if (e == 1) {
            heads[0] = 9530;
            heads[1] = 9748;
        } else {
            heads[0] = 9504;
            heads[1] = 9722;
        }
        for (int h : heads) {
            require(rom, h, hex("3078f3ac4eb8" + shortHex(PRODUCE[e])), "display head->SAT call");
        }
        int registerCount = countJsrs(rom, ENQUEUE[e]);
        int producerCount = countJsrs(rom, PRODUCE[e]);
        if (registerCount != 35 || producerCount != 16) {
            throw new IOException("Unexpected direct call-site counts: " + registerCount + "/" + producerCount);
        }
        Objects.requireNonNull(parent);
        Objects.requireNonNull(parent);
        return new Result(e, registerCount, producerCount);
    }

    private static int countJsrs(byte[] data, int addr) {
        int count = 0;
        int end = Math.min(data.length, 196608) - 4;
        for (int i = 0; i < end; i++) {
            if (data[i] == REGISTER_JSR_PREFIX[0] && data[i + 1] == REGISTER_JSR_PREFIX[1] && (data[i + 2] & 255) == (addr >>> 8) && (data[i + 3] & 255) == (addr & 255)) {
                count++;
            }
        }
        return count;
    }

    private static int signedWord(byte[] data, int p) throws IOException {
        if (data == null || p < 0 || p > data.length - 2) {
            throw new IOException("Out-of-bounds source table");
        }
        return (short) (((data[p] & 255) << 8) | (data[p + 1] & 255));
    }

    private static void require(byte[] data, int pos, byte[] bytes, String title) throws IOException {
        if (data == null || pos < 0 || pos > data.length - bytes.length) {
            throw new IOException("Out-of-bounds " + title);
        }
        for (int i = 0; i < bytes.length; i++) {
            if (data[pos + i] != bytes[i]) {
                throw new IOException("Opcode mismatch " + title + " +" + Integer.toHexString(pos + i));
            }
        }
    }

    private static String shortHex(int value) {
        return String.format(Locale.ROOT, "%04x", Integer.valueOf(value));
    }

    private static byte[] hex(String text) {
        byte[] result = new byte[text.length() / 2];
        for (int i = 0; i < result.length; i++) {
            result[i] = (byte) Integer.parseInt(text.substring(i * 2, (i * 2) + 2), 16);
        }
        return result;
    }
}
