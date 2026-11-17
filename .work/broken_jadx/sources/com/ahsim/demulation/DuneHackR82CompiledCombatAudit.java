package com.ahsim.demulation;

import com.ahsim.demulation.DuneHackR82AsmHookProbe;
import com.ahsim.demulation.DuneHackR82Probe;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* loaded from: classes2.dex */
public final class DuneHackR82CompiledCombatAudit {
    private static final int PRIMARY_DAMAGE_WORDS = 132;
    private static final int[][] SITES = {new int[]{40690, 40992, 40808, 41110}, new int[]{117664, 117908, 117872, 118116}, new int[]{110594, 110840, 110802, 111048}, new int[]{115924, 116168, 116132, 116376}};
    private static final String[] IDS = {"build_damage", "unit_damage", "death_hand", "projectile_surface"};
    private static final byte[][] REFERENCE_ENTRIES = {hex("30 2f 00 14 91 6a 00 12 4a 6a 00 12 6e 00 00 a4"), hex("41 f9 00 02 5c 36 30 30 40 00 0c 40 01 00 67 04"), hex("30 04 04 40 00 13 d0 40 30 3b 00 06 4e fb 00 02"), hex("38 40 0c 2a 00 17 00 02 66 00 00 b6")};

    public enum Evidence {
        REFERENCE_ENTRY_BYTES,
        JMP_TO_ROM_UNVERIFIED,
        INVALID_JMP_DESTINATION,
        MULTIPLE_LAYOUT_CANDIDATES,
        NO_VERIFIED_ENTRY
    }

    public static final class Entry {
        public final Evidence evidence;

        /* renamed from: id */
        public final String f3id;
        public final int jumpDestination;
        public final int layout;
        public final int matchingLayouts;
        public final int offset;

        private Entry(String id, Evidence evidence, int offset, int layout, int dest, int count) {
            this.f3id = id;
            this.evidence = evidence;
            this.offset = offset;
            this.layout = layout;
            this.jumpDestination = dest;
            this.matchingLayouts = count;
        }
    }

    public static final class Result {
        public final Entry deathHand;
        public final boolean extendedDamageTablesVerified;
        public final boolean handlerSemanticsVerified;
        public final boolean knownExampleFingerprint;
        public final int linkedPrimaryDamageTableOffset;
        public final int linkedPrimaryDamageTableWords;
        public final boolean modGameplayReady;
        public final int nonUnityPrimaryMultipliers;
        public final boolean playerCombatSettingsReady;
        public final Entry projectileSurface;
        public final String romSha256;
        public final Entry structureDamage;
        public final Entry unitDamage;

        private Result(String hash, boolean known, Entry structure, Entry unit, Entry death, Entry projectile, int tableOffset, int tableWords, int nonUnity) {
            this.handlerSemanticsVerified = false;
            this.extendedDamageTablesVerified = false;
            this.modGameplayReady = false;
            this.playerCombatSettingsReady = false;
            this.romSha256 = hash;
            this.knownExampleFingerprint = known;
            this.structureDamage = structure;
            this.unitDamage = unit;
            this.deathHand = death;
            this.projectileSurface = projectile;
            this.linkedPrimaryDamageTableOffset = tableOffset;
            this.linkedPrimaryDamageTableWords = tableWords;
            this.nonUnityPrimaryMultipliers = nonUnity;
        }
    }

    private DuneHackR82CompiledCombatAudit() {
    }

    private static byte[] hex(String text) {
        String compact = text.replace(" ", "");
        byte[] bytes = new byte[compact.length() / 2];
        for (int i = 0; i < bytes.length; i++) {
            bytes[i] = (byte) Integer.parseInt(compact.substring(i * 2, (i * 2) + 2), 16);
        }
        return bytes;
    }

    private static boolean bytesMatch(byte[] rom, int offset, byte[] pattern) {
        if (offset < 0 || offset > rom.length - pattern.length) {
            return false;
        }
        for (int j = 0; j < pattern.length; j++) {
            if (rom[offset + j] != pattern[j]) {
                return false;
            }
        }
        return true;
    }

    private static boolean absoluteJmp(byte[] rom, int addr) {
        return addr >= 0 && addr <= rom.length + (-6) && (rom[addr] & 255) == 78 && (rom[addr + 1] & 255) == 249;
    }

    private static long readLong(byte[] rom, int at) {
        return ((rom[at] & 255) << 24) | ((rom[at + 1] & 255) << 16) | ((rom[at + 2] & 255) << 8) | (rom[at + 3] & 255);
    }

    private static Entry inspectEntry(byte[] rom, int index) {
        boolean reference;
        int matched = 0;
        boolean jmp = false;
        int matched2 = 0;
        int layout = -1;
        int matchedAddr = -1;
        while (true) {
            reference = false;
            if (matched2 >= 4) {
                break;
            }
            int at = SITES[index][matched2];
            boolean candidateJump = absoluteJmp(rom, at);
            if (matched2 == 0 && bytesMatch(rom, at, REFERENCE_ENTRIES[index])) {
                reference = true;
            }
            if (candidateJump || reference) {
                matched++;
                layout = matched2;
                matchedAddr = at;
                jmp = candidateJump;
            }
            matched2++;
        }
        if (matched > 1) {
            return new Entry(IDS[index], Evidence.MULTIPLE_LAYOUT_CANDIDATES, -1, -1, -1, matched);
        }
        if (matched == 0) {
            return new Entry(IDS[index], Evidence.NO_VERIFIED_ENTRY, -1, -1, -1, 0);
        }
        if (!jmp) {
            return new Entry(IDS[index], Evidence.REFERENCE_ENTRY_BYTES, matchedAddr, layout, -1, 1);
        }
        long to = readLong(rom, matchedAddr + 2);
        if ((1 & to) == 0 && to >= 1024 && to <= rom.length - 16 && (to < matchedAddr || to >= matchedAddr + 6)) {
            reference = true;
        }
        boolean valid = reference;
        return new Entry(IDS[index], valid ? Evidence.JMP_TO_ROM_UNVERIFIED : Evidence.INVALID_JMP_DESTINATION, matchedAddr, layout, valid ? (int) to : -1, 1);
    }

    public static Result inspect(byte[] rom, DuneHackR82Probe.Result family, DuneHackR82AsmHookProbe.Result hookAudit) throws IOException {
        Entry build;
        if (rom == null || rom.length < 262144 || rom.length > 8388608 || family == null || !family.recognized() || hookAudit == null) {
            throw new IOException("R82C ROM with matching ASM audit required");
        }
        String sha = sha256(rom);
        if (sha.equals(hookAudit.sourceSha256) && rom[256] == 83 && rom[257] == 69 && rom[258] == 71 && rom[259] == 65) {
            Entry build2 = inspectEntry(rom, 0);
            Entry unit = inspectEntry(rom, 1);
            Entry death = inspectEntry(rom, 2);
            Entry projectile = inspectEntry(rom, 3);
            int offset = -1;
            int words = 0;
            int notOne = 0;
            if (unit.evidence == Evidence.REFERENCE_ENTRY_BYTES && unit.offset >= 0 && rom[unit.offset] == 65 && (rom[unit.offset + 1] & 255) == 249) {
                long table = readLong(rom, unit.offset + 2);
                if ((table & 1) != 0 || table < 1024) {
                    build = build2;
                } else {
                    build = build2;
                    if (table <= rom.length - 264) {
                        offset = (int) table;
                        words = 132;
                        for (int j = 0; j < 132; j++) {
                            int m = ((rom[(j * 2) + offset] & 255) << 8) | (rom[(j * 2) + offset + 1] & 255);
                            if (m != 256) {
                                notOne++;
                            }
                        }
                    }
                }
            } else {
                build = build2;
            }
            return new Result(sha, family.exampleFingerprintMatched, build, unit, death, projectile, offset, words, notOne);
        }
        throw new IOException("ROM identity/header mismatch in compiled combat audit");
    }

    private static String sha256(byte[] rom) throws IOException {
        try {
            byte[] digest = MessageDigest.getInstance("SHA-256").digest(rom);
            char[] hex = "0123456789abcdef".toCharArray();
            char[] chars = new char[64];
            for (int i = 0; i < digest.length; i++) {
                chars[i * 2] = hex[(digest[i] >>> 4) & 15];
                chars[(i * 2) + 1] = hex[digest[i] & 15];
            }
            return new String(chars);
        } catch (NoSuchAlgorithmException e) {
            throw new IOException("SHA-256 unavailable", e);
        }
    }
}
