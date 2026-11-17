package com.ahsim.demulation;

import com.ahsim.demulation.DuneHackR82CompiledCombatAudit;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* loaded from: classes2.dex */
public final class DuneHackR82ActiveDamageRouteAudit {
    private static final int MAX_HANDLER_SCAN = 1536;
    private static final int[][] RETURN_TARGETS = {new int[]{117684, 117928, 117892, 118136}, new int[]{40698, 41000, 40816, 41118}};

    public enum Evidence {
        REFERENCE_ENTRY_NO_HOOK,
        NO_PROVEN_HOOK,
        BAD_ENTRY,
        POSSIBLE_RETURN_TO_EXPECTED_LAYOUT,
        POSSIBLE_RETURN_TO_OTHER_LAYOUT,
        MULTIPLE_POSSIBLE_RETURNS,
        NO_POSSIBLE_RETURN
    }

    public static final class Route {
        public final int candidateCount;
        public final String description;
        public final int destination;
        public final int discoveredReturn;
        public final int entryOffset;
        public final Evidence evidence;
        public final int expectedReturn;

        private Route(Evidence evidence, int entry, int dest, int expected, int actual, int count, String description) {
            this.evidence = evidence;
            this.entryOffset = entry;
            this.destination = dest;
            this.expectedReturn = expected;
            this.discoveredReturn = actual;
            this.candidateCount = count;
            this.description = description;
        }
    }

    public static final class Result {
        public final boolean isExecutableCompatibilityConfirmed;
        public final boolean modGameplayReady;
        public final boolean playerDamageSettingsReady;
        public final Route structures;
        public final Route units;

        private Result(Route units, Route structures) {
            this.isExecutableCompatibilityConfirmed = false;
            this.modGameplayReady = false;
            this.playerDamageSettingsReady = false;
            this.units = units;
            this.structures = structures;
        }
    }

    private DuneHackR82ActiveDamageRouteAudit() {
    }

    private static long be32(byte[] rom, int at) {
        return ((rom[at] & 255) << 24) | ((rom[at + 1] & 255) << 16) | ((rom[at + 2] & 255) << 8) | (rom[at + 3] & 255);
    }

    private static String sha256(byte[] rom) throws IOException {
        try {
            byte[] digest = MessageDigest.getInstance("SHA-256").digest(rom);
            char[] out = new char[digest.length * 2];
            char[] digits = "0123456789abcdef".toCharArray();
            for (int i = 0; i < digest.length; i++) {
                out[i * 2] = digits[(digest[i] >>> 4) & 15];
                out[(i * 2) + 1] = digits[digest[i] & 15];
            }
            return new String(out);
        } catch (NoSuchAlgorithmException e) {
            throw new IOException("SHA-256 missing", e);
        }
    }

    private static Route check(byte[] rom, DuneHackR82CompiledCombatAudit.Entry e, int kind) {
        Evidence evidence;
        int at;
        int i = 4;
        int expected = (e.layout < 0 || e.layout >= 4) ? -1 : RETURN_TARGETS[kind][e.layout];
        if (e.evidence == DuneHackR82CompiledCombatAudit.Evidence.REFERENCE_ENTRY_BYTES) {
            return new Route(Evidence.REFERENCE_ENTRY_NO_HOOK, e.offset, -1, expected, -1, 0, "reference bytes only");
        }
        if (e.evidence == DuneHackR82CompiledCombatAudit.Evidence.INVALID_JMP_DESTINATION) {
            return new Route(Evidence.BAD_ENTRY, e.offset, -1, expected, -1, 0, "invalid JMP target");
        }
        if (e.evidence != DuneHackR82CompiledCombatAudit.Evidence.JMP_TO_ROM_UNVERIFIED) {
            return new Route(Evidence.NO_PROVEN_HOOK, e.offset, -1, expected, -1, 0, "ambiguous or unknown entry");
        }
        int dest = e.jumpDestination;
        if (dest < 1024 || (dest & 1) != 0 || dest > rom.length - 16) {
            return new Route(Evidence.BAD_ENTRY, e.offset, dest, expected, -1, 0, "invalid handler bounds");
        }
        int limit = Math.min(rom.length - 6, dest + MAX_HANDLER_SCAN);
        int observed = -1;
        int at2 = dest;
        int count = 0;
        int count2 = 0;
        boolean mismatched = false;
        while (at2 <= limit) {
            if ((rom[at2] & 255) == 78) {
                if ((rom[at2 + 1] & 255) == 249) {
                    long to = be32(rom, at2 + 2);
                    int j = 0;
                    while (true) {
                        if (j >= i) {
                            at = at2;
                            break;
                        }
                        at = at2;
                        if (to != RETURN_TARGETS[kind][j]) {
                            j++;
                            at2 = at;
                            i = 4;
                        } else {
                            count++;
                            int observed2 = (int) to;
                            if (j == e.layout) {
                                count2 = 1;
                                observed = observed2;
                            } else {
                                observed = observed2;
                                mismatched = true;
                            }
                        }
                    }
                } else {
                    at = at2;
                }
            } else {
                at = at2;
            }
            at2 = at + 2;
            i = 4;
        }
        if (count == 0) {
            evidence = Evidence.NO_POSSIBLE_RETURN;
        } else if (count > 1) {
            evidence = Evidence.MULTIPLE_POSSIBLE_RETURNS;
        } else if (count2 == 0 || mismatched) {
            Evidence evidence2 = Evidence.POSSIBLE_RETURN_TO_OTHER_LAYOUT;
            evidence = evidence2;
        } else {
            evidence = Evidence.POSSIBLE_RETURN_TO_EXPECTED_LAYOUT;
        }
        return new Route(evidence, e.offset, dest, expected, observed, count, "static tail-JMP pattern; reachability and semantics unverified");
    }

    public static Result inspect(byte[] rom, DuneHackR82CompiledCombatAudit.Result compiled) throws IOException {
        if (rom == null || compiled == null || rom.length < 262144 || rom.length > 8388608 || compiled.unitDamage == null || compiled.structureDamage == null || !sha256(rom).equals(compiled.romSha256)) {
            throw new IOException("Active damage audit ROM identity mismatch");
        }
        return new Result(check(rom, compiled.unitDamage, 0), check(rom, compiled.structureDamage, 1));
    }
}
