package com.ahsim.demulation;

import com.ahsim.demulation.RazorScriptEntryCrosswalkAudit;
import java.io.IOException;

/* loaded from: classes2.dex */
public final class RazorUnitScriptDispatchAudit {
    public static final int SOURCE_TYPES = 32;
    public static final int TYPE_TABLE_ROM_OFFSET = 155200;
    public static final int UNIT_ORDR_ENTRIES = 27;

    private RazorUnitScriptDispatchAudit() {
    }

    public static final class Evidence {
        public final int extendedInitialUnits;
        public final int extendedReinforcements;
        public final boolean initialObjectScriptBootstrapVerified;
        public final int initialUnits;
        private final byte[] mapping;
        public final int missions;
        public final boolean originalUnitActionReloadPathVerified;
        public final int reinforcements;
        public final int remappedInitialUnits;
        public final int remappedReinforcements;
        public final boolean runtimeTickAuthorized;
        public final int variant;

        private Evidence(RazorScriptEntryCrosswalkAudit.Report source, byte[] table) {
            this.originalUnitActionReloadPathVerified = true;
            this.initialObjectScriptBootstrapVerified = false;
            this.runtimeTickAuthorized = false;
            this.variant = source.variant;
            this.missions = source.missionCount;
            this.initialUnits = source.initialUnits;
            this.reinforcements = source.reinforcements;
            this.extendedInitialUnits = source.extraInitialUnits;
            this.extendedReinforcements = source.extraReinforcements;
            this.mapping = (byte[]) table.clone();
            int init = 0;
            int rein = 0;
            for (int t = 0; t < 32; t++) {
                if ((this.mapping[t] & 255) != t) {
                    init += source.initialTypeCount(t);
                    rein += source.reinforcementTypeCount(t);
                }
            }
            this.remappedInitialUnits = init;
            this.remappedReinforcements = rein;
        }

        public int unitScriptIndex(int sourceType) {
            if (sourceType < 0 || sourceType >= 32) {
                throw new IllegalArgumentException("Razor source unit type outside verified 0..31 domain");
            }
            return this.mapping[sourceType] & 255;
        }

        public int[] copyMappings() {
            int[] out = new int[32];
            for (int t = 0; t < 32; t++) {
                out[t] = unitScriptIndex(t);
            }
            return out;
        }
    }

    private static int word(byte[] rom, int pos) throws IOException {
        if (pos < 0 || pos + 1 >= rom.length) {
            throw new IOException("68000 instruction outside ROM");
        }
        return ((rom[pos] & 255) << 8) | (rom[pos + 1] & 255);
    }

    private static int longWord(byte[] rom, int pos) throws IOException {
        return (word(rom, pos) << 16) | word(rom, pos + 2);
    }

    private static void require(boolean pass, String label) throws IOException {
        if (!pass) {
            throw new IOException("Razor UNIT script dispatch opcode mismatch: " + label);
        }
    }

    public static Evidence inspect(byte[] rom, String sha256) throws IOException {
        RazorScriptEntryCrosswalkAudit.Report source = RazorScriptEntryCrosswalkAudit.inspect(rom, sha256);
        int i = 27;
        require(source.unitEntryCount == 27, "UNIT ORDR cardinality");
        int loader = source.variant == 1 ? 53234 : 53550;
        int typeReader = source.variant == 1 ? 53270 : 53586;
        int tableLea = source.variant == 1 ? 53280 : 53596;
        int tableRead = source.variant == 1 ? 53286 : 53602;
        int call = source.variant == 1 ? 106390 : 106630;
        require(word(rom, loader) == 8239 && word(rom, loader + 2) == 4, "script loader entry");
        require(word(rom, typeReader) == 12335 && word(rom, typeReader + 2) == 8, "argument source type");
        require(word(rom, tableLea) == 17401 && longWord(rom, tableLea + 2) == 155200, "absolute type table address");
        require(word(rom, tableRead) == 4145 && word(rom, tableRead + 2) == 0, "indexed byte type lookup");
        require(word(rom, tableRead + 4) == 53312, "type doubled to UNIT ORDR word index");
        require(word(rom, tableRead + 6) == 8799, "bank context restoration");
        require(word(rom, tableRead + 8) == 12913, "ORDR indexed offset read");
        require(word(rom, call + (-12)) == 4138 && word(rom, call + (-10)) == 2, "UNIT+0x02 type field");
        require(word(rom, call + (-8)) == 18560 && word(rom, call + (-6)) == 16128, "signed type argument");
        require(word(rom, call + (-4)) == 18538 && word(rom, call + (-2)) == 22, "unit script context at +0x16");
        require(word(rom, call) == 20153 && longWord(rom, call + 2) == loader, "Unit_SetAction call to type mapper");
        require(155232 <= rom.length, "table bounds");
        byte[] table = new byte[32];
        int i2 = 0;
        while (i2 < 32) {
            int entry = rom[i2 + TYPE_TABLE_ROM_OFFSET] & 255;
            require(entry < i, "mapped ORDR entry " + i2);
            table[i2] = (byte) entry;
            i2++;
            i = i;
        }
        require((table[i] & 255) == 7 && (table[28] & 255) == 15 && (table[29] & 255) == 10 && (table[30] & 255) == 7 && (table[31] & 255) == 1, "extended unit aliases");
        return new Evidence(source, table);
    }
}
