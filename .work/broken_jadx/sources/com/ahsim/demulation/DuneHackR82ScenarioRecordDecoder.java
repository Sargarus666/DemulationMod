package com.ahsim.demulation;

import com.ahsim.demulation.DuneHackR82ScenarioContentExtractor;
import java.io.IOException;
import java.lang.reflect.Array;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes2.dex */
public final class DuneHackR82ScenarioRecordDecoder {
    public static final int HOUSE_COUNT = 5;
    public static final int MAX_RECORDS = 4096;
    public static final int MAX_SCENARIO_BYTES = 65536;
    public static final int MISSIONS = 9;

    public static final class Record {
        public final int index;
        public final String kind;
        public final String label;
        public final int length;
        public final int offset;
        public final int section;
        private final int[] words;

        private Record(int offset, int length, int section, int index, String kind, String label, int[] words) {
            this.offset = offset;
            this.length = length;
            this.section = section;
            this.index = index;
            this.kind = kind;
            this.label = label;
            this.words = (int[]) words.clone();
        }

        public int valueCount() {
            return this.words.length;
        }

        public int value(int index) {
            return this.words[index];
        }

        public int[] values() {
            return (int[]) this.words.clone();
        }
    }

    public static final class Document {
        public final int byteCount;
        public final int fifthHouseRecords;
        public final int recordCount;
        private final List<Record> records;
        public final int reinforcementCount;
        public final int[] sectionCounts;
        public final int seed;
        public final int structureCount;
        public final int teamCount;
        public final int unitCount;

        private Document(int len, int[] sections, List<Record> records, int seed) {
            this.byteCount = len;
            this.recordCount = records.size();
            this.sectionCounts = (int[]) sections.clone();
            this.unitCount = sections[8];
            this.structureCount = sections[9];
            this.teamCount = sections[7];
            this.reinforcementCount = sections[10];
            this.fifthHouseRecords = sections[11];
            this.seed = seed;
            this.records = Collections.unmodifiableList(new ArrayList(records));
        }

        public List<Record> records() {
            return this.records;
        }
    }

    public static final class Bank {
        private final Document[][] documents;
        public final int totalFifthHouseRecords;
        public final int totalRecords;
        public final int totalReinforcements;
        public final int totalStructures;
        public final int totalTeams;
        public final int totalUnits;

        private Bank(Document[][] docs) {
            this.documents = docs;
            int records = 0;
            int units = 0;
            int buildings = 0;
            int teams = 0;
            int reinforcements = 0;
            int extra = 0;
            for (Document[] house : docs) {
                for (Document doc : house) {
                    records += doc.recordCount;
                    units += doc.unitCount;
                    buildings += doc.structureCount;
                    teams += doc.teamCount;
                    reinforcements += doc.reinforcementCount;
                    extra += doc.fifthHouseRecords;
                }
            }
            this.totalRecords = records;
            this.totalUnits = units;
            this.totalStructures = buildings;
            this.totalTeams = teams;
            this.totalReinforcements = reinforcements;
            this.totalFifthHouseRecords = extra;
        }

        public Document document(int house, int mission) {
            if (house < 0 || house >= 5 || mission < 1 || mission > 9) {
                throw new IllegalArgumentException("R82C house/mission out of bounds");
            }
            return this.documents[house][mission - 1];
        }
    }

    private static final class Reader {
        final byte[] bytes;
        int pos;

        Reader(byte[] bytes) {
            this.bytes = bytes;
        }

        int word() throws IOException {
            if (this.pos > this.bytes.length - 2) {
                throw new IOException("R82C scenario truncated at " + this.pos);
            }
            int n = ((this.bytes[this.pos] & 255) << 8) | (this.bytes[this.pos + 1] & 255);
            this.pos += 2;
            return n;
        }

        int[] words(int count) throws IOException {
            if (count < 0 || count > (this.bytes.length - this.pos) / 2) {
                throw new IOException("R82C scenario word array truncated at " + this.pos);
            }
            int[] result = new int[count];
            for (int i = 0; i < count; i++) {
                result[i] = word();
            }
            return result;
        }

        String text(int len) throws IOException {
            if (len < 0 || len > 512 || len > this.bytes.length - this.pos) {
                throw new IOException("R82C scenario text truncated at " + this.pos);
            }
            for (int i = 0; i < len; i++) {
                int ch = this.bytes[this.pos + i] & 255;
                if (ch != 0 && (ch < 32 || ch > 126)) {
                    throw new IOException("R82C scenario non-ASCII resource name");
                }
            }
            String value = new String(this.bytes, this.pos, len, StandardCharsets.US_ASCII);
            this.pos += len;
            int zero = value.indexOf(0);
            return zero >= 0 ? value.substring(0, zero) : value;
        }
    }

    private DuneHackR82ScenarioRecordDecoder() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:130:0x0279, code lost:
    
        if (r4 == false) goto L119;
     */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x027e, code lost:
    
        if (r1.pos != r28.length) goto L119;
     */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x0284, code lost:
    
        if (r7[r18] < 9) goto L117;
     */
    /* JADX WARN: Code restructure failed: missing block: B:135:0x0286, code lost:
    
        if (r9 < 0) goto L117;
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x028f, code lost:
    
        return new com.ahsim.demulation.DuneHackR82ScenarioRecordDecoder.Document(r28.length, r7, r4, r9, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:139:0x0297, code lost:
    
        throw new java.io.IOException("R82C scenario missing essential general/map records");
     */
    /* JADX WARN: Code restructure failed: missing block: B:141:0x029f, code lost:
    
        throw new java.io.IOException("R82C scenario terminator missing or trailing payload");
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x01aa, code lost:
    
        throw new java.io.IOException("Invalid R82C house field at " + r13);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.ahsim.demulation.DuneHackR82ScenarioRecordDecoder.Document decode(byte[] r28) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 680
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ahsim.demulation.DuneHackR82ScenarioRecordDecoder.decode(byte[]):com.ahsim.demulation.DuneHackR82ScenarioRecordDecoder$Document");
    }

    public static Bank decodeAuditedBank(DuneHackR82ScenarioContentExtractor.Result scenarios) throws IOException {
        if (scenarios == null) {
            throw new IOException("No verified R82C scenario bank");
        }
        Document[][] docs = (Document[][]) Array.newInstance((Class<?>) Document.class, 5, 9);
        for (int h = 0; h < 5; h++) {
            for (int m = 1; m <= 9; m++) {
                docs[h][m - 1] = decode(scenarios.scenario(h, m));
            }
        }
        return new Bank(docs);
    }
}
