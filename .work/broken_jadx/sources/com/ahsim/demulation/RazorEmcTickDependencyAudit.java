package com.ahsim.demulation;

import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;

/* loaded from: classes2.dex */
public final class RazorEmcTickDependencyAudit {
    public static final int BANK_IDENTITY = 1;
    public static final int EXTENDED_OBJECT_DISPATCH = 5;
    public static final int GAMEPLAY_TICK = 8;
    public static final int NATIVE_ABI = 4;
    public static final int NUMERIC_NATIVE_REFERENCES = 3;
    public static final int ORDR_ENTRY_TABLES = 2;
    public static final int ORIGINAL_TICK_ORDER = 6;
    public static final int RAZOR_AI_OWNER_SCHEDULER = 7;
    public static final int SOURCE_IDENTITY = 0;
    private static final String[] ROM_SHA = {DuneHackR82cRazorCombatAudit.RAZOR_ONE_SHA256, DuneHackR82cRazorCombatAudit.RAZOR_TWO_SHA256};
    private static final String[] NAMES = {"BUILD", "TEAM", "UNIT"};
    private static final int[][] OFFSETS = {new int[]{1776826, 1777896, 1778242}, new int[]{575494, 576564, 576910}};
    private static final int[] LENGTHS = {1070, 346, 5484};
    private static final int[] ENTRIES = {19, 6, 27};
    private static final String[] BANK_SHA = {"d813c5732056b6e8e42daeb8eba5572da8724e212a134331e0ba947da7ab2551", "f35fa2e0347e70e55d13c70d67197ded0e8ddf548dac81ec2bbfcc0f981e1195", "69b6d466d48c5aa5aa89856fec73b4e88ba0510e8f49c44d720ab51584068306"};
    private static final int[] INSTRUCTIONS = {432, 134, 2468};
    private static final String[] DEPENDENCIES = {"source_identity", "compiled_emc_identity", "entry_table_integrity", "numeric_native_id_inventory", "native_function_semantics", "razor_object_dispatch", "original_tick_cadence", "razor_owner_and_ai_callbacks", "authorized_gameplay_tick"};
    private static final int[][] REQUIRES = {new int[0], new int[]{0}, new int[]{1}, new int[]{2}, new int[]{3}, new int[]{2, 4}, new int[]{4, 5}, new int[]{6, 5}, new int[]{7, 6, 4}};

    public static final class Bank {
        public final int bytes;
        public final int dataWords;
        public final int distinctNativeIds;
        public final int entries;
        public final int instructionCount;
        public final String name;
        public final int nativeCalls;
        private final int[] nativeCounts;
        public final long nativeIdMask;
        public final int romOffset;
        public final String sha256;

        private Bank(int i, int offset, int words, int count, int calls, long mask, int[] counts) {
            this.name = RazorEmcTickDependencyAudit.NAMES[i];
            this.sha256 = RazorEmcTickDependencyAudit.BANK_SHA[i];
            this.romOffset = offset;
            this.bytes = RazorEmcTickDependencyAudit.LENGTHS[i];
            this.entries = RazorEmcTickDependencyAudit.ENTRIES[i];
            this.dataWords = words;
            this.instructionCount = count;
            this.nativeCalls = calls;
            this.nativeIdMask = mask;
            this.distinctNativeIds = Long.bitCount(mask);
            this.nativeCounts = (int[]) counts.clone();
        }

        public int countNativeId(int id) {
            if (id < 0 || id >= 64) {
                throw new IllegalArgumentException("Invalid native ID");
            }
            return this.nativeCounts[id];
        }
    }

    public static final class Evidence {
        public final Bank build;
        public final boolean gameplayTickReady;
        public final boolean nativeAbiVerified;
        public final int romVariant;
        public final boolean scriptIdentityVerified;
        public final String sourceSha256;
        public final Bank team;
        public final Bank unit;

        private Evidence(int variant, String sha, Bank[] banks) {
            this.scriptIdentityVerified = true;
            this.nativeAbiVerified = false;
            this.gameplayTickReady = false;
            this.romVariant = variant;
            this.sourceSha256 = sha;
            this.build = banks[0];
            this.team = banks[1];
            this.unit = banks[2];
        }

        public boolean dependencyVerified(int id) {
            if (id < 0 || id >= RazorEmcTickDependencyAudit.DEPENDENCIES.length) {
                throw new IllegalArgumentException("Unknown tick prerequisite");
            }
            return id <= 3;
        }

        public String dependencyName(int id) {
            if (id < 0 || id >= RazorEmcTickDependencyAudit.DEPENDENCIES.length) {
                throw new IllegalArgumentException("Unknown tick prerequisite");
            }
            return RazorEmcTickDependencyAudit.DEPENDENCIES[id];
        }

        public int[] prerequisiteIds(int id) {
            if (id < 0 || id >= RazorEmcTickDependencyAudit.REQUIRES.length) {
                throw new IllegalArgumentException("Unknown tick prerequisite");
            }
            return (int[]) RazorEmcTickDependencyAudit.REQUIRES[id].clone();
        }

        public int verifiedNodes() {
            return 4;
        }

        public int blockedNodes() {
            return RazorEmcTickDependencyAudit.DEPENDENCIES.length - 4;
        }

        public int totalNativeCalls() {
            return this.build.nativeCalls + this.team.nativeCalls + this.unit.nativeCalls;
        }
    }

    private RazorEmcTickDependencyAudit() {
    }

    private static int u16(byte[] src, int at) {
        return ((src[at] & 255) << 8) | (src[at + 1] & 255);
    }

    private static int u32(byte[] src, int at) {
        return ((src[at] & 255) << 24) | ((src[at + 1] & 255) << 16) | ((src[at + 2] & 255) << 8) | (src[at + 3] & 255);
    }

    private static boolean tag(byte[] src, int pos, String match) {
        if (pos < 0 || match.length() + pos > src.length) {
            return false;
        }
        for (int i = 0; i < match.length(); i++) {
            if (src[pos + i] != ((byte) match.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    private static String sha(byte[] data, int start, int count) throws IOException {
        try {
            MessageDigest md = MessageDigest.getInstance("SHA-256");
            md.update(data, start, count);
            StringBuilder out = new StringBuilder(64);
            for (byte value : md.digest()) {
                out.append(Character.forDigit((value >>> 4) & 15, 16));
                out.append(Character.forDigit(value & 15, 16));
            }
            return out.toString();
        } catch (NoSuchAlgorithmException ex) {
            throw new IOException("SHA256 missing", ex);
        }
    }

    private static Bank parse(byte[] rom, int offset, int i) throws IOException {
        boolean[] instructionStart;
        int param;
        int pc;
        int opcode;
        int length = LENGTHS[i];
        int entryCount = ENTRIES[i];
        if (offset < 0 || offset > rom.length - length || !tag(rom, offset, "FORM") || !tag(rom, offset + 8, "EMC2") || !tag(rom, offset + 12, "ORDR") || u32(rom, offset + 4) != length || u32(rom, offset + 16) != entryCount * 2 || !BANK_SHA[i].equals(sha(rom, offset, length))) {
            throw new IOException("Razor " + NAMES[i] + " EMC fingerprint or header mismatch");
        }
        int dataTag = offset + 20 + (entryCount * 2);
        if (tag(rom, dataTag, "DATA")) {
            int bytes = u32(rom, dataTag + 4);
            int dataOffset = dataTag + 8;
            if (bytes <= 0 || (bytes & 1) != 0 || dataOffset + bytes != offset + length) {
                throw new IOException("Razor EMC DATA bounds invalid");
            }
            int words = bytes / 2;
            int ordr = offset + 20;
            boolean[] instructionStart2 = new boolean[words];
            int[] counts = new int[64];
            int calls = 0;
            int instructions = 0;
            int calls2 = 0;
            long mask = 0;
            while (calls2 < words) {
                instructionStart2[calls2] = true;
                int word = u16(rom, dataOffset + (calls2 * 2));
                int pc2 = calls2 + 1;
                if ((word & 32768) != 0) {
                    instructionStart = instructionStart2;
                    param = word & 32767;
                    opcode = pc2;
                    pc = 0;
                } else {
                    instructionStart = instructionStart2;
                    int opcode2 = (word >>> 8) & 31;
                    if ((word & RazorVramPatternLoader.METATILE_BANK_BYTES) != 0) {
                        param = (byte) word;
                        opcode = pc2;
                        pc = opcode2;
                    } else {
                        int param2 = word & 8192;
                        if (param2 != 0) {
                            if (pc2 < words) {
                                param = u16(rom, (pc2 * 2) + dataOffset);
                                opcode = pc2 + 1;
                                pc = opcode2;
                            } else {
                                throw new IOException("Truncated Razor EMC operand");
                            }
                        } else {
                            param = 0;
                            pc = opcode2;
                            opcode = pc2;
                        }
                    }
                }
                if (pc > 18) {
                    throw new IOException("Unsupported Razor EMC opcode");
                }
                if (pc == 14) {
                    if (param < 0 || param > 63) {
                        throw new IOException("Razor native function ID out of range");
                    }
                    mask |= 1 << param;
                    counts[param] = counts[param] + 1;
                    calls++;
                }
                instructions++;
                calls2 = opcode;
                instructionStart2 = instructionStart;
            }
            boolean[] instructionStart3 = instructionStart2;
            for (int n = 0; n < entryCount; n++) {
                int entry = u16(rom, ordr + (n * 2));
                if (entry >= words || !instructionStart3[entry]) {
                    throw new IOException("Razor EMC ORDR entry not on instruction boundary");
                }
            }
            if (instructions != INSTRUCTIONS[i] || calls == 0) {
                throw new IOException("Razor EMC instruction inventory mismatch");
            }
            return new Bank(i, offset, words, instructions, calls, mask, counts);
        }
        throw new IOException("Missing Razor EMC DATA chunk");
    }

    public static Evidence inspect(byte[] rom, String expectedSha) throws IOException {
        if (rom == null || expectedSha == null || (rom.length != 3145728 && rom.length != 4194304)) {
            throw new IOException("Razor EMC requires authenticated 3/4 MiB ROM");
        }
        String actual = sha(rom, 0, rom.length);
        if (!actual.equalsIgnoreCase(expectedSha)) {
            throw new IOException("Razor EMC source fingerprint changed");
        }
        int variant = Arrays.asList(ROM_SHA).indexOf(actual);
        if (variant < 0) {
            throw new IOException("Unknown Razor EMC source ROM");
        }
        int[] offsets = OFFSETS[variant];
        Bank[] banks = new Bank[3];
        for (int i = 0; i < 3; i++) {
            banks[i] = parse(rom, offsets[i], i);
            if (i > 0 && offsets[i] != offsets[i - 1] + LENGTHS[i - 1]) {
                throw new IOException("Razor EMC bank order not contiguous");
            }
        }
        int found = 0;
        for (int p = 0; p <= rom.length - 12; p += 2) {
            if (tag(rom, p, "FORM") && tag(rom, p + 8, "EMC2")) {
                if (p != offsets[0] && p != offsets[1] && p != offsets[2]) {
                    throw new IOException("Unrecognized Razor EMC bank at " + p);
                }
                found++;
            }
        }
        if (found != 3) {
            throw new IOException("Razor EMC bank count mismatch");
        }
        return new Evidence(variant + 1, actual, banks);
    }
}
