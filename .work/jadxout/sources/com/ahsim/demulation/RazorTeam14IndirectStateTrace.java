package com.ahsim.demulation;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes2.dex */
public final class RazorTeam14IndirectStateTrace {
    private static final long MASK24 = 16777215;
    public static final int RAM_BASE = 16711680;
    public static final int RAM_BYTES = 65536;

    public enum Decision {
        SKIP_FLAG2,
        SKIP_TYPE,
        SKIP_HOUSE,
        SKIP_INDIRECT_BIT7,
        UNKNOWN_INDIRECT_ADDRESS,
        MATCH
    }

    public static final class Entry {
        public final Decision decision;
        public final int effectiveAddress24;
        public final int flags5;
        public final int house;
        public final int indirectByte7;
        public final int rawReferenceWord;
        public final int slot;
        public final int unitAddress;
        public final int unitType;

        private Entry(int slot, int addr, int typ, int owner, int flags, int raw, int ea, int byte7, Decision why) {
            this.slot = slot;
            this.unitAddress = addr;
            this.unitType = typ;
            this.house = owner;
            this.flags5 = flags;
            this.rawReferenceWord = raw;
            this.effectiveAddress24 = ea;
            this.indirectByte7 = byte7;
            this.decision = why;
        }
    }

    public static final class Result {
        public final int contextAddress;
        public final List<Entry> entries;
        public final boolean gameplayTickAuthorized;
        public final int matchedSlot;
        public final int proposedD0;
        public final int proposedPosition;
        public final int proposedTeam18;
        public final boolean proposedWrites;
        public final int rawCounterWord;
        public final boolean replacementAuthorized;
        public final int scanned;
        public final int team14Before;
        public final int team18Before;
        public final int teamHouseWord;
        public final boolean unknown;

        private Result(int context, int owner, int ctr, int old14, int old18, List<Entry> trace, int match, int proposed, boolean unknown) {
            int i = 0;
            this.gameplayTickAuthorized = false;
            this.replacementAuthorized = false;
            this.contextAddress = context;
            this.teamHouseWord = owner;
            this.rawCounterWord = ctr;
            this.team14Before = old14;
            this.team18Before = old18;
            this.entries = Collections.unmodifiableList(new ArrayList(trace));
            this.scanned = trace.size();
            this.matchedSlot = match;
            this.proposedPosition = proposed;
            this.unknown = unknown;
            this.proposedWrites = !unknown && match >= 0;
            this.proposedTeam18 = this.proposedWrites ? 2 : old18;
            if (unknown) {
                i = -1;
            } else if (match >= 0) {
                i = 4;
            }
            this.proposedD0 = i;
        }
    }

    private RazorTeam14IndirectStateTrace() {
    }

    private static int index(byte[] ram, long address, int count) throws IOException {
        if (ram == null || ram.length != 65536) {
            throw new IOException("TEAM14 needs complete 64-KiB RAM");
        }
        long a = MASK24 & address;
        if (count < 0 || a < 16711680 || count + a > 16777216) {
            throw new IOException("Unbacked TEAM14 address 0x" + Long.toHexString(a));
        }
        return (int) (a - 16711680);
    }

    private static int byteAt(byte[] r, long a) throws IOException {
        return r[index(r, a, 1)] & 255;
    }

    private static int wordAt(byte[] r, long a) throws IOException {
        int i = index(r, a, 2);
        return ((r[i] & 255) << 8) | (r[i + 1] & 255);
    }

    private static int longAt(byte[] r, long a) throws IOException {
        return (wordAt(r, a) << 16) | wordAt(r, 2 + a);
    }

    private static int addressWord(int word) {
        return ((short) word) & 16777215;
    }

    public static Result trace(byte[] ram) throws IOException {
        int reduced;
        int raw;
        int ea;
        Decision d;
        int bit;
        if (ram == null || ram.length != 65536) {
            throw new IOException("Invalid Genesis RAM size");
        }
        int team = longAt(ram, -14188L) & 16777215;
        index(ram, team, 26);
        int owner = wordAt(ram, team + 16);
        int old14 = longAt(ram, team + 20);
        int old18 = wordAt(ram, team + 24);
        int counter = wordAt(ram, -15834L);
        int reduced2 = (counter - 25) & 65535;
        if ((32768 & reduced2) != 0) {
            return new Result(team, owner, counter, old14, old18, Collections.emptyList(), -1, old14, false);
        }
        int max = reduced2 + 1;
        if (max > 102) {
            throw new IOException("Unverified UNIT slot count: " + max);
        }
        List<Entry> entries = new ArrayList<>();
        int slot = 0;
        while (slot < max) {
            int unit = (slot * 140) + 16715180;
            index(ram, unit, 140);
            int typ = byteAt(ram, unit + 2);
            int house = byteAt(ram, unit + 8);
            int team2 = team;
            int flags = byteAt(ram, unit + 5);
            if ((flags & 4) != 0) {
                reduced = reduced2;
                ea = -1;
                bit = -1;
                d = Decision.SKIP_FLAG2;
                raw = -1;
            } else {
                reduced = reduced2;
                if (typ != 16) {
                    ea = -1;
                    bit = -1;
                    d = Decision.SKIP_TYPE;
                    raw = -1;
                } else if (house == (owner & 255)) {
                    int raw2 = wordAt(ram, unit + 90);
                    int ea2 = addressWord(raw2);
                    if (ea2 < 16711680) {
                        raw = raw2;
                        ea = ea2;
                    } else if (ea2 > 16777208) {
                        raw = raw2;
                        ea = ea2;
                    } else {
                        raw = raw2;
                        ea = ea2;
                        int bit2 = byteAt(ram, ea2 + 7);
                        d = (bit2 & 128) != 0 ? Decision.SKIP_INDIRECT_BIT7 : Decision.MATCH;
                        bit = bit2;
                    }
                    d = Decision.UNKNOWN_INDIRECT_ADDRESS;
                    bit = -1;
                } else {
                    ea = -1;
                    bit = -1;
                    d = Decision.SKIP_HOUSE;
                    raw = -1;
                }
            }
            int bit3 = slot;
            Decision d2 = d;
            entries.add(new Entry(bit3, unit, typ, house, flags, raw, ea, bit, d));
            if (d2 == Decision.UNKNOWN_INDIRECT_ADDRESS) {
                return new Result(team2, owner, counter, old14, old18, entries, -1, old14, true);
            }
            team = team2;
            Decision d3 = Decision.MATCH;
            if (d2 == d3) {
                int pos = longAt(ram, unit + 10);
                return new Result(team, owner, counter, old14, old18, entries, bit3, pos, false);
            }
            slot = bit3 + 1;
            reduced2 = reduced;
        }
        return new Result(team, owner, counter, old14, old18, entries, -1, old14, false);
    }
}
