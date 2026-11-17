package com.ahsim.demulation;

import java.io.IOException;

/* loaded from: classes2.dex */
public final class RazorSpriteNodeRegistrationSourceTrace {
    public static final int FIXED_DESCRIPTOR_POINTER_ADDRESS = 541318;
    public static final int NODE_DESCRIPTOR_POINTER_OFFSET = 8;
    public static final int RECORD_FIELD_0E_OFFSET = 14;
    public static final int RECORD_GRAPHIC_NODE_HANDLE_OFFSET = 16;
    public static final int SOURCE_COORDINATE_OFFSET = 10;
    public static final int TABLE_ALT_VARIANTS_BASE = 541422;
    public static final int TABLE_VARIANTS_BASE = 541394;
    private static final int[][] ENTRY = {new int[]{0, 0, 0}, new int[]{22896, 22984, 23062}, new int[]{23172, 23260, 23338}};
    private static final int[][] PARENT_CALL = {new int[]{0, 0, 0}, new int[]{35410, 35608, 35436}, new int[]{35712, 35910, 35738}};
    private static final int[] REGISTRAR = {0, 4838, 4806};
    private static final int[] FLAGS = {1, 0, 2};
    private static final int[] REGISTRATION_D1 = {101056512, 50528256, 117899264};
    private static final byte[] COMMON_PREFIX = hex("48e7303045f8d497266f001470003013d5c0");
    private static final byte[] REUSE_BRANCH = hex("302b00106708324023480008601e177c0003000e700ad08b");
    private static final byte[] REGISTRATION_TAIL = hex("374000106704");
    private static final byte[] CALLER_PREFIX = hex("2f0a4eb8");

    public static final class PathEvidence {
        public final int callerOffset;
        public final int descriptorTableAddress;
        public final int entryOffset;
        public final boolean existingNodeReusesHandle;
        public final boolean newNodeHandleStoredBack;
        public final int nodeFieldOffset;
        public final int nodeRegistrationEntry;
        public final int recordHandleOffset;
        public final int registerFlags;
        public final long registrationD1;
        public final int selector;
        public final int sourceCoordinateOffset;

        private PathEvidence(int e, int s) {
            int i;
            this.nodeFieldOffset = 8;
            this.recordHandleOffset = 16;
            this.sourceCoordinateOffset = 10;
            this.existingNodeReusesHandle = true;
            this.newNodeHandleStoredBack = true;
            this.selector = s;
            this.entryOffset = RazorSpriteNodeRegistrationSourceTrace.ENTRY[e][s];
            this.callerOffset = RazorSpriteNodeRegistrationSourceTrace.PARENT_CALL[e][s];
            if (s == 0) {
                i = RazorSpriteNodeRegistrationSourceTrace.TABLE_ALT_VARIANTS_BASE;
            } else {
                i = s == 1 ? RazorSpriteNodeRegistrationSourceTrace.FIXED_DESCRIPTOR_POINTER_ADDRESS : RazorSpriteNodeRegistrationSourceTrace.TABLE_VARIANTS_BASE;
            }
            this.descriptorTableAddress = i;
            this.nodeRegistrationEntry = RazorSpriteNodeRegistrationSourceTrace.REGISTRAR[e];
            this.registerFlags = RazorSpriteNodeRegistrationSourceTrace.FLAGS[s];
            this.registrationD1 = RazorSpriteNodeRegistrationSourceTrace.REGISTRATION_D1[s] & 4294967295L;
        }
    }

    public static final class Result {
        public final int edition;
        public final boolean existingNodeDescriptorRewriteVerified;
        public final boolean gameplaySpritesMayBeDrawn;
        public final boolean parentPassesRecordPointerVerified;
        private final PathEvidence[] paths;
        public final boolean recordToNodeRegistrationVerified;
        private final byte[] rom;
        public final boolean unitRecordIdentityVerified;
        public final boolean unitToPoseCfgVerified;

        private Result(int e, byte[] data) {
            this.recordToNodeRegistrationVerified = true;
            this.existingNodeDescriptorRewriteVerified = true;
            this.parentPassesRecordPointerVerified = true;
            this.unitRecordIdentityVerified = false;
            this.unitToPoseCfgVerified = false;
            this.gameplaySpritesMayBeDrawn = false;
            this.edition = e;
            this.rom = data;
            this.paths = new PathEvidence[]{new PathEvidence(e, 0), new PathEvidence(e, 1), new PathEvidence(e, 2)};
        }

        public PathEvidence path(int selector) {
            if (selector < 0 || selector >= this.paths.length) {
                throw new IllegalArgumentException("selector 0..2");
            }
            return this.paths[selector];
        }

        public long rawDescriptorPointer(int selector, int index) {
            PathEvidence p = path(selector);
            if (index < 0 || index > 7) {
                throw new IllegalArgumentException("audit sample index 0..7");
            }
            int position = p.descriptorTableAddress + (selector == 1 ? 0 : index * 4);
            return RazorSpriteNodeRegistrationSourceTrace.read32(this.rom, position);
        }

        public int spriteFrameForUnit(int unitType, int rawFacing) throws IOException {
            throw new IOException("Unit->graphic record->CFG frame has not been demonstrated");
        }

        public int satSlotForUnit(int rawUnitIndex) throws IOException {
            throw new IOException("SAT slot is dynamically allocated; no per-unit slot map proved");
        }
    }

    private RazorSpriteNodeRegistrationSourceTrace() {
    }

    public static Result inspect(byte[] rom, String digest) throws IOException {
        int pos;
        int table;
        int e = RazorSpriteSatObjectCallSiteTrace.inspect(rom, digest).edition;
        int s = 0;
        while (s < 3) {
            int at = ENTRY[e][s];
            match(rom, at, COMMON_PREFIX, "record prologue");
            int pos2 = at + COMMON_PREFIX.length;
            if (s == 0) {
                match(rom, pos2, hex("302f0018e54841f9000842ee20700000"), "alt indexed pointer table");
                pos = pos2 + 16;
            } else if (s == 1) {
                match(rom, pos2, hex("207900084286"), "fixed pointer fetch");
                pos = pos2 + 6;
            } else {
                match(rom, pos2, hex("41f9000842d2302f0018e54820700000"), "variant pointer table");
                pos = pos2 + 16;
            }
            match(rom, pos, REUSE_BRANCH, "existing-node / new-node selection");
            int pos3 = pos + REUSE_BRANCH.length;
            match(rom, pos3, hex("223c"), "control word move");
            int pos4 = pos3 + 2;
            if (read32(rom, pos4) != (REGISTRATION_D1[s] & 4294967295L)) {
                throw new IOException("Unexpected D1 flags");
            }
            int pos5 = pos4 + 4;
            match(rom, pos5, hex("327cf3a84eb8"), "registrar call prologue");
            int pos6 = pos5 + 6;
            if (read16(rom, pos6) != REGISTRAR[e]) {
                throw new IOException("Unexpected node registrar destination");
            }
            int pos7 = pos6 + 2;
            match(rom, pos7, REGISTRATION_TAIL, "return node handle");
            int pos8 = pos7 + REGISTRATION_TAIL.length;
            match(rom, pos8, hex("08d200"), "mark record state");
            int pos9 = pos8 + 3;
            if ((rom[pos9] & 255) != FLAGS[s]) {
                throw new IOException("Unexpected render-state bit");
            }
            match(rom, pos9 + 1, hex("4cdf0c0c4e75"), "return from registration helper");
            int caller = PARENT_CALL[e][s];
            match(rom, caller - 2, s == 1 ? hex("2e8a4eb8") : CALLER_PREFIX, "caller places record pointer A2 on stack");
            if (read16(rom, caller + 2) != at) {
                throw new IOException("Caller does not target helper");
            }
            if (s != 1) {
                match(rom, caller + 4, hex("588f"), "caller unwinds record pointer");
            }
            for (int i = 0; i < 8; i++) {
                if (s == 0) {
                    table = TABLE_ALT_VARIANTS_BASE;
                } else {
                    table = s == 1 ? FIXED_DESCRIPTOR_POINTER_ADDRESS : TABLE_VARIANTS_BASE;
                }
                long ptr = read32(rom, (s == 1 ? 0 : i * 4) + table);
                if (ptr == 0 || ptr >= rom.length || (1 & ptr) != 0) {
                    throw new IOException("ROM graphic descriptor pointer outside ROM");
                }
            }
            s++;
        }
        return new Result(e, (byte[]) rom.clone());
    }

    private static int read16(byte[] data, int pos) throws IOException {
        if (data == null || pos < 0 || pos + 2 > data.length) {
            throw new IOException("read16 bounds");
        }
        return ((data[pos] & 255) << 8) | (data[pos + 1] & 255);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long read32(byte[] data, int pos) {
        if (data == null || pos < 0 || pos > data.length - 4) {
            throw new IllegalArgumentException("read32 bounds");
        }
        return ((data[pos] & 255) << 24) | ((data[pos + 1] & 255) << 16) | ((data[pos + 2] & 255) << 8) | (255 & data[pos + 3]);
    }

    private static void match(byte[] data, int pos, byte[] signature, String description) throws IOException {
        if (data == null || pos < 0 || pos > data.length - signature.length) {
            throw new IOException(description + " bounds");
        }
        for (int i = 0; i < signature.length; i++) {
            if (data[pos + i] != signature[i]) {
                throw new IOException(description + " mismatched at " + Integer.toHexString(pos + i));
            }
        }
    }

    private static byte[] hex(String h) {
        byte[] b = new byte[h.length() / 2];
        for (int i = 0; i < b.length; i++) {
            b[i] = (byte) Integer.parseInt(h.substring(i * 2, (i * 2) + 2), 16);
        }
        return b;
    }
}
