package com.ahsim.demulation;

/* loaded from: classes2.dex */
final class GenesisFrontendAudioTestData {
    private static final int MUSIC_TEST_TABLE = 556868;
    private static final int SOUND_TEST_TABLE = 557020;
    final Entry[] music;
    final Entry[] sound;

    static final class Entry {
        final String name;
        final int sequence;

        Entry(String name, int sequence) {
            this.name = name;
            this.sequence = sequence;
        }
    }

    private GenesisFrontendAudioTestData(Entry[] music, Entry[] sound) {
        this.music = music;
        this.sound = sound;
    }

    static GenesisFrontendAudioTestData fromRom(byte[] rom) {
        return fromSource(GenesisAudioSource.fromRom(rom));
    }

    static GenesisFrontendAudioTestData fromSource(GenesisAudioSource source) {
        if (source == null || !source.contains(MUSIC_TEST_TABLE, 8) || !source.contains(SOUND_TEST_TABLE, 8)) {
            throw new IllegalArgumentException("READY audio source is missing OPTIONS metadata");
        }
        Entry[] music = readTable(source, MUSIC_TEST_TABLE, 32);
        Entry[] sound = readTable(source, SOUND_TEST_TABLE, 64);
        if (music.length != 18 || sound.length != 40) {
            throw new IllegalArgumentException("Original OPTIONS audio-test table count mismatch");
        }
        return new GenesisFrontendAudioTestData(music, sound);
    }

    private static Entry[] readTable(GenesisAudioSource source, int table, int maxEntries) {
        Entry[] temp = new Entry[maxEntries];
        int count = 0;
        int p = table;
        while (count < maxEntries) {
            int namePtr = source.be32(p);
            int sequence = source.be32(p + 4);
            p += 8;
            if (namePtr == 0 && sequence == 0) {
                break;
            }
            String name = readCString(source, namePtr).trim();
            temp[count] = new Entry(name, sequence);
            count++;
        }
        Entry[] out = new Entry[count];
        System.arraycopy(temp, 0, out, 0, count);
        return out;
    }

    private static String readCString(GenesisAudioSource source, int offset) {
        if (!source.contains(offset, 1)) {
            throw new IllegalArgumentException("OPTIONS audio-test name range");
        }
        StringBuilder out = new StringBuilder();
        for (int p = offset; source.contains(p, 1) && source.m1u8(p) != 0 && out.length() < 64; p++) {
            out.append((char) (source.m1u8(p) & 127));
        }
        return out.toString();
    }
}
