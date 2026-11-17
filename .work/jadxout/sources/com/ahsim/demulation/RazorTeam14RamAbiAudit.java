package com.ahsim.demulation;

import java.io.IOException;

/* loaded from: classes2.dex */
public final class RazorTeam14RamAbiAudit {
    public static final int LOOP_WORD = -15834;
    private static final int MASK24 = 16777215;
    public static final int MAX_UNIT_SLOTS = 102;
    public static final int RAM_BASE = 16711680;
    public static final int RAM_SIZE = 65536;
    public static final int TEAM_CONTEXT_PTR = -14188;
    public static final int UNIT_BASE = 16715180;
    public static final int UNIT_STRIDE = 140;

    private RazorTeam14RamAbiAudit() {
    }

    public static final class ReadOnlyResult {
        public final boolean gameplayTickAuthorized;
        public final int matchedRaw;
        public final boolean proposedWrites;
        public final int rawLoopWord;
        public final int referencedAddress;
        public final int returnD0;
        public final boolean runtimeCallbackAuthorized;
        public final int scanned;
        public final int teamAddress;
        public final int teamHouseWord;
        public final int valueAtTeam14;
        public final int valueAtTeam18;
        public final int writeAddress14;
        public final int writeAddress18;

        private ReadOnlyResult(int teamAddress, int house, int loop, int count, int match, int ret, int pos, int a14, int a18, int ref) {
            this.runtimeCallbackAuthorized = false;
            this.gameplayTickAuthorized = false;
            this.teamAddress = teamAddress;
            this.teamHouseWord = house;
            this.rawLoopWord = loop;
            this.scanned = count;
            this.matchedRaw = match;
            this.returnD0 = ret;
            this.proposedWrites = match >= 0;
            this.valueAtTeam14 = pos;
            this.valueAtTeam18 = match >= 0 ? 2 : 0;
            this.writeAddress14 = a14;
            this.writeAddress18 = a18;
            this.referencedAddress = ref;
        }
    }

    private static int ramIndex(byte[] ram, long address, int length, String purpose) throws IOException {
        if (ram == null || ram.length != 65536) {
            throw new IOException("TEAM14 needs exact 64 KiB work-RAM snapshot");
        }
        long a = 16777215 & address;
        if (length < 0 || a < 16711680 || length + a > 16777216) {
            throw new IOException("TEAM14 " + purpose + " outside backed work RAM: 0x" + Long.toHexString(a));
        }
        return (int) (a - 16711680);
    }

    /* renamed from: b */
    private static int m13b(byte[] ram, long address, String tag) throws IOException {
        return ram[ramIndex(ram, address, 1, tag)] & 255;
    }

    /* renamed from: w */
    private static int m15w(byte[] ram, long address, String tag) throws IOException {
        int idx = ramIndex(ram, address, 2, tag);
        return ((ram[idx] & 255) << 8) | (ram[idx + 1] & 255);
    }

    /* renamed from: l */
    private static int m14l(byte[] ram, long address, String tag) throws IOException {
        long idx = ramIndex(ram, address, 4, tag);
        return ((ram[(int) idx] & 255) << 24) | ((ram[((int) idx) + 1] & 255) << 16) | ((ram[((int) idx) + 2] & 255) << 8) | (ram[((int) idx) + 3] & 255);
    }

    public static int signExtendAddressWord(int value) {
        return (short) (65535 & value);
    }

    public static ReadOnlyResult inspect(byte[] ram) throws IOException {
        if (ram == null || ram.length != 65536) {
            throw new IOException("Invalid RAM snapshot");
        }
        int team = m14l(ram, -14188L, "current TEAM pointer") & MASK24;
        ramIndex(ram, team, 26, "TEAM record");
        int house = m15w(ram, team + 16, "TEAM+0x10");
        int word = m15w(ram, -15834L, "C226 loop word");
        int afterSubtract = (word - 25) & 65535;
        if ((32768 & afterSubtract) != 0) {
            return new ReadOnlyResult(team, house, word, 0, -1, 0, 0, 0, 0, -1);
        }
        int scans = afterSubtract + 1;
        if (scans > 102) {
            throw new IOException("TEAM14 C226 exceeds audited 102-unit pool");
        }
        for (int i = 0; i < scans; i++) {
            int unit = (i * 140) + 16715180;
            ramIndex(ram, unit, 140, "Unit pool slot");
            if ((m13b(ram, unit + 5, "Unit+5") & 4) == 0 && m13b(ram, unit + 2, "Unit+2") == 16 && m13b(ram, unit + 8, "Unit+8") == (house & 255)) {
                int p16 = m15w(ram, unit + 90, "Unit+0x5A");
                int pointer = signExtendAddressWord(p16) & MASK24;
                if ((m13b(ram, pointer + 7, "Unit+0x5A indirect +7") & 128) == 0) {
                    int pos = m14l(ram, unit + 10, "Unit+0x0A");
                    ramIndex(ram, team + 20, 4, "TEAM+0x14 write");
                    ramIndex(ram, team + 24, 2, "TEAM+0x18 write");
                    return new ReadOnlyResult(team, house, word, i + 1, i, 4, pos, team + 20, team + 24, pointer);
                }
            }
        }
        return new ReadOnlyResult(team, house, word, scans, -1, 0, 0, 0, 0, -1);
    }
}
