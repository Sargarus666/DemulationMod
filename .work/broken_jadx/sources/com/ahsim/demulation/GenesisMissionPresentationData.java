package com.ahsim.demulation;

import java.io.IOException;
import java.lang.reflect.Array;

/* loaded from: classes2.dex */
public final class GenesisMissionPresentationData {
    private static final int[] FRONTEND_TO_ROM_HOUSE = {1, 0, 2};
    private static final int HOUSE_COUNT = 3;
    private static final int HOUSE_MISSION_TABLE = 556856;
    private static final int MISSION_COUNT = 9;
    private final Entry[][] entries = (Entry[][]) Array.newInstance((Class<?>) Entry.class, 3, 9);

    public static final class Entry {
        public final String advice;
        public final String briefing;
        public final String defeat;
        public final String victory;

        private Entry(String briefing, String victory, String defeat, String advice) {
            this.briefing = briefing;
            this.victory = victory;
            this.defeat = defeat;
            this.advice = advice;
        }
    }

    public GenesisMissionPresentationData(RomRuntimeOriginalContentAssets content) throws IOException {
        if (content == null) {
            throw new IOException("Mission presentation READY content is unavailable");
        }
        parseSequentialPack(content.missionPresentationText());
    }

    @Deprecated
    public GenesisMissionPresentationData(byte[] rom) {
        if (rom == null || rom.length < 557056) {
            throw new IllegalArgumentException("ROM is missing mission presentation tables");
        }
        Entry[][] romOrder = (Entry[][]) Array.newInstance((Class<?>) Entry.class, 3, 9);
        for (int romHouse = 0; romHouse < 3; romHouse++) {
            int base = u24(be32(rom, (romHouse * 4) + HOUSE_MISSION_TABLE));
            for (int mission = 0; mission < 9; mission++) {
                int rec = (mission * 16) + base;
                romOrder[romHouse][mission] = new Entry(readCString(rom, u24(be32(rom, rec))), readCString(rom, u24(be32(rom, rec + 4))), readCString(rom, u24(be32(rom, rec + 8))), readCString(rom, u24(be32(rom, rec + 12))));
            }
        }
        mapRomOrder(romOrder);
    }

    private void parseSequentialPack(byte[] pack) throws IOException {
        Entry[][] romOrder = (Entry[][]) Array.newInstance((Class<?>) Entry.class, 3, 9);
        int[] cursor = {0};
        for (int romHouse = 0; romHouse < 3; romHouse++) {
            for (int mission = 0; mission < 9; mission++) {
                romOrder[romHouse][mission] = new Entry(next(pack, cursor), next(pack, cursor), next(pack, cursor), next(pack, cursor));
            }
        }
        if (cursor[0] != pack.length) {
            throw new IOException("Mission presentation content has trailing bytes");
        }
        mapRomOrder(romOrder);
    }

    private void mapRomOrder(Entry[][] romOrder) {
        for (int frontHouse = 0; frontHouse < 3; frontHouse++) {
            int romHouse = FRONTEND_TO_ROM_HOUSE[frontHouse];
            for (int mission = 0; mission < 9; mission++) {
                this.entries[frontHouse][mission] = romOrder[romHouse][mission];
            }
        }
    }

    private static String next(byte[] data, int[] cursor) throws IOException {
        int[] next = {cursor[0]};
        String value = RomRuntimeOriginalContentAssets.decodeCString(data, cursor[0], next);
        cursor[0] = next[0];
        return value;
    }

    public Entry get(int frontendHouse, int missionOneBased) {
        if (frontendHouse < 0 || frontendHouse >= 3 || missionOneBased < 1 || missionOneBased > 9) {
            throw new IllegalArgumentException("Invalid House/mission presentation index");
        }
        return this.entries[frontendHouse][missionOneBased - 1];
    }

    private static int be32(byte[] data, int offset) {
        if (offset < 0 || offset > data.length - 4) {
            throw new IllegalArgumentException("Mission presentation ROM range");
        }
        return ((data[offset] & 255) << 24) | ((data[offset + 1] & 255) << 16) | ((data[offset + 2] & 255) << 8) | (data[offset + 3] & 255);
    }

    private static int u24(int v) {
        return 16777215 & v;
    }

    private static String readCString(byte[] data, int offset) {
        if (offset < 0 || offset >= data.length) {
            throw new IllegalArgumentException("Mission presentation ROM pointer");
        }
        StringBuilder out = new StringBuilder();
        for (int p = offset; p < data.length && p < offset + DuneHackR82ScenarioRecordDecoder.MAX_RECORDS; p++) {
            int c = data[p] & 255;
            if (c == 0) {
                return out.toString();
            }
            if (c < 32 || c > 126) {
                throw new IllegalArgumentException("Mission presentation ROM text");
            }
            out.append((char) c);
        }
        throw new IllegalArgumentException("Mission presentation ROM string is unterminated");
    }
}
