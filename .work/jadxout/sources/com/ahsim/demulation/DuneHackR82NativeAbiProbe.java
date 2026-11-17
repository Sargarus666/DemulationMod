package com.ahsim.demulation;

import com.ahsim.demulation.DuneHackR82EmcDependencyProbe;
import com.ahsim.demulation.DuneHackR82UnitDispatchProbe;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Objects;

/* loaded from: classes2.dex */
public final class DuneHackR82NativeAbiProbe {
    public static final int MAX_NATIVE_ID = 63;

    public static final class Bank {
        public final int distinctNativeIds;
        public final int executeCount;
        public final int[] executeCountsById;
        public final int instructionCount;
        public final String name;
        public final long nativeIdMask;

        private Bank(String name, int instructions, int executes, long mask, int[] counts) {
            this.name = name;
            this.instructionCount = instructions;
            this.executeCount = executes;
            this.nativeIdMask = mask;
            this.distinctNativeIds = Long.bitCount(mask);
            this.executeCountsById = (int[]) counts.clone();
        }

        public boolean invokes(int id) {
            return id >= 0 && id <= 63 && (this.nativeIdMask & (1 << id)) != 0;
        }

        public int calls(int id) {
            if (id < 0 || id > 63) {
                throw new IllegalArgumentException("Invalid EMC native ID");
            }
            return this.executeCountsById[id];
        }
    }

    public static final class Result {
        public final Bank build;
        public final boolean modifiedGameplayReady;
        public final boolean nativeFunctionAbiVerified;
        public final boolean numericIdInventoryVerified;
        public final String sourceSha256;
        public final Bank team;
        public final Bank unit;

        private Result(Bank build, Bank team, Bank unit, String sha) {
            this.numericIdInventoryVerified = true;
            this.nativeFunctionAbiVerified = false;
            this.modifiedGameplayReady = false;
            this.build = build;
            this.team = team;
            this.unit = unit;
            this.sourceSha256 = sha;
        }
    }

    private DuneHackR82NativeAbiProbe() {
    }

    private static String sha256(byte[] bytes) throws IOException {
        try {
            MessageDigest md = MessageDigest.getInstance("SHA-256");
            byte[] digest = md.digest(bytes);
            char[] out = new char[64];
            char[] chars = "0123456789abcdef".toCharArray();
            for (int i = 0; i < 32; i++) {
                out[i * 2] = chars[(digest[i] >>> 4) & 15];
                out[(i * 2) + 1] = chars[digest[i] & 15];
            }
            return new String(out);
        } catch (NoSuchAlgorithmException e) {
            throw new IOException("SHA-256 unavailable", e);
        }
    }

    private static int u16(byte[] rom, int off) {
        return ((rom[off] & 255) << 8) | (rom[off + 1] & 255);
    }

    private static Bank scan(byte[] rom, DuneHackR82EmcDependencyProbe.Script script) throws IOException {
        if (script == null) {
            throw new IOException("R82C EMC bank not identified");
        }
        int orderBytes = script.entries * 2;
        int begin = script.offset + 20 + orderBytes + 8;
        int end = (script.dataWords * 2) + begin;
        if (script.offset < 0 || script.length < orderBytes + 28 || begin < 0 || end < begin || end > rom.length || end != script.offset + script.length || rom[begin - 8] != 68 || rom[begin - 7] != 65 || rom[begin - 6] != 84 || rom[begin - 5] != 65) {
            throw new IOException("R82C EMC DATA range mismatch");
        }
        int[] counts = new int[64];
        long mask = 0;
        int instructions = 0;
        int instructions2 = begin;
        int executes = 0;
        while (instructions2 < end) {
            int word = u16(rom, instructions2);
            instructions2 += 2;
            int opcode = (word >>> 8) & 31;
            int param = word & 255;
            if ((32768 & word) != 0) {
                opcode = 0;
                param = word & 32767;
            } else if ((word & RazorVramPatternLoader.METATILE_BANK_BYTES) != 0) {
                param = (byte) word;
            } else if ((word & 8192) != 0) {
                if (instructions2 + 2 > end) {
                    throw new IOException("Truncated EMC extended operand");
                }
                param = u16(rom, instructions2);
                instructions2 += 2;
            }
            if (opcode > 18) {
                throw new IOException("Unsupported EMC opcode " + opcode);
            }
            instructions++;
            if (opcode == 14) {
                if (param < 0 || param > 63) {
                    throw new IOException("R82C native Execute index out of supported range");
                }
                counts[param] = counts[param] + 1;
                mask |= 1 << param;
                executes++;
            }
        }
        if (instructions2 != end || executes == 0) {
            throw new IOException("R82C EMC inventory incomplete");
        }
        return new Bank(script.name, instructions, executes, mask, counts);
    }

    public static Result inspect(byte[] rom, DuneHackR82EmcDependencyProbe.Result emc, DuneHackR82UnitDispatchProbe.Result dispatch) throws IOException {
        if (rom != null && rom.length >= 262144 && rom.length <= 8388608 && emc != null && dispatch != null && emc.scriptsIdentified()) {
            Objects.requireNonNull(dispatch);
            String hash = sha256(rom);
            if (!hash.equals(emc.sourceSha256) || !hash.equals(dispatch.sourceSha256)) {
                throw new IOException("R82C EMC ABI audit mixed different ROM sources");
            }
            Bank build = scan(rom, emc.build);
            Bank team = scan(rom, emc.team);
            Bank unit = scan(rom, emc.unit);
            if (build.executeCount != 83 || build.distinctNativeIds != 14 || team.executeCount != 43 || team.distinctNativeIds != 13 || ((unit.executeCount != 556 && unit.executeCount != 558) || unit.distinctNativeIds != 53)) {
                throw new IOException("R82C EMC native call inventory differs from audited builders");
            }
            return new Result(build, team, unit, hash);
        }
        throw new IOException("No audited R82C EMC + unit dispatch evidence");
    }
}
