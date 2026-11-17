package com.ahsim.demulation;

import com.ahsim.demulation.RazorSpriteSatProducerTrace;
import java.io.IOException;
import java.util.Objects;

/* loaded from: classes2.dex */
public final class RazorSpriteSatRecordWriterTrace {
    public static final int MAX_RECORDS = 80;
    public static final int RECORD_BYTES = 8;
    public static final int SAT_RAM_BASE = 16770088;
    private static final int[] RECORD_WRITER = {0, 5256, 5224};
    private static final int[] PREPARE_A3 = {0, 4982, 4950};
    private static final int[] RECORD_LIMIT = {0, 5298, 5266};
    private static final byte[] A3_BUFFER = fromHex("47f8e428");
    private static final byte[] WRITE_FOUR_WORDS = fromHex("36c33019d04f36c0301102409fff36120243f800b7403680301102406000670602539fff3011815b36c2");
    private static final byte[] LIMIT_SEQUENCE = fromHex("524fbefc00506e0e");

    public static final class Result {
        public final int edition;
        public final boolean facingToSpriteFrameVerified;
        public final boolean flipOrPaletteRuntimeDispatchVerified;
        public final boolean gameplaySpritesMayBeDrawn;
        public final boolean objectToSatSlotVerified;
        public final int ramBaseWriterOffset;
        public final boolean ramSatUploaderVerified;
        public final boolean recordLayoutVerified;
        public final int recordLimitOffset;
        public final int recordWriterOffset;

        private Result(int edition) {
            this.recordLayoutVerified = true;
            this.ramSatUploaderVerified = true;
            this.objectToSatSlotVerified = false;
            this.facingToSpriteFrameVerified = false;
            this.flipOrPaletteRuntimeDispatchVerified = false;
            this.gameplaySpritesMayBeDrawn = false;
            this.edition = edition;
            this.recordWriterOffset = RazorSpriteSatRecordWriterTrace.RECORD_WRITER[edition];
            this.ramBaseWriterOffset = RazorSpriteSatRecordWriterTrace.PREPARE_A3[edition];
            this.recordLimitOffset = RazorSpriteSatRecordWriterTrace.RECORD_LIMIT[edition];
        }

        public int slotForObject(int type, int index) throws IOException {
            throw new IOException("Razor runtime object-to-SAT slot linkage not established");
        }

        public int attributeForObject(int type, int facing) throws IOException {
            throw new IOException("Razor runtime facing-to-pose/flip linkage not established");
        }
    }

    private RazorSpriteSatRecordWriterTrace() {
    }

    public static Result inspect(byte[] rom, String sha256) throws IOException {
        RazorSpriteSatProducerTrace.Result source = RazorSpriteSatProducerTrace.inspect(rom, sha256);
        int e = source.edition;
        if (e != 1 && e != 2) {
            throw new IOException("Unrecognized Razor edition");
        }
        check(rom, PREPARE_A3[e], A3_BUFFER, "A3 work RAM destination");
        check(rom, RECORD_WRITER[e], WRITE_FOUR_WORDS, "eight-byte SAT record writer");
        check(rom, RECORD_LIMIT[e], LIMIT_SEQUENCE, "80-record producer bound");
        Objects.requireNonNull(source);
        Objects.requireNonNull(source);
        Objects.requireNonNull(source);
        Objects.requireNonNull(source);
        return new Result(e);
    }

    public static final class SatRecord {
        public final int attributeWord;
        public final int sizeLinkWord;
        public final int xWord;
        public final int yWord;

        private SatRecord(int y, int sizeLink, int attr, int x) {
            this.yWord = y;
            this.sizeLinkWord = sizeLink;
            this.attributeWord = attr;
            this.xWord = x;
        }

        public int yCoordinate() {
            return this.yWord & 1023;
        }

        public int xCoordinate() {
            return this.xWord & 1023;
        }

        public int widthTiles() {
            return ((this.sizeLinkWord >>> 10) & 3) + 1;
        }

        public int heightTiles() {
            return ((this.sizeLinkWord >>> 8) & 3) + 1;
        }

        public int link() {
            return this.sizeLinkWord & 127;
        }

        public int tileIndex() {
            return this.attributeWord & 2047;
        }

        public int paletteLine() {
            return (this.attributeWord >>> 13) & 3;
        }

        public boolean priority() {
            return (this.attributeWord & 32768) != 0;
        }

        public boolean verticalFlip() {
            return (this.attributeWord & DuneHackR82ScenarioRecordDecoder.MAX_RECORDS) != 0;
        }

        public boolean horizontalFlip() {
            return (this.attributeWord & GenesisObjectArt.VRAM_PATTERN_COUNT) != 0;
        }
    }

    public static SatRecord decodeCapturedRecord(byte[] capture, int index) {
        if (capture == null || capture.length % 8 != 0 || capture.length > 640 || index < 0 || index >= capture.length / 8) {
            throw new IllegalArgumentException("Invalid full-record SAT capture or index");
        }
        int p = index * 8;
        return new SatRecord(word(capture, p), word(capture, p + 2), word(capture, p + 4), word(capture, p + 6));
    }

    private static int word(byte[] v, int p) {
        return ((v[p] & 255) << 8) | (v[p + 1] & 255);
    }

    private static void check(byte[] b, int off, byte[] signature, String what) throws IOException {
        if (b == null || off < 0 || off > b.length - signature.length) {
            throw new IOException("Out-of-range " + what);
        }
        for (int i = 0; i < signature.length; i++) {
            if (b[off + i] != signature[i]) {
                throw new IOException("Wrong " + what + " opcode at 0x" + Integer.toHexString(off + i));
            }
        }
    }

    private static byte[] fromHex(String h) {
        byte[] a = new byte[h.length() / 2];
        for (int i = 0; i < a.length; i++) {
            a[i] = (byte) Integer.parseInt(h.substring(i * 2, (i * 2) + 2), 16);
        }
        return a;
    }
}
