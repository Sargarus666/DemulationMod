package com.ahsim.demulation;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes2.dex */
public final class RomOriginalContentAssetManifest {
    public static final String ENDING_TEXT_DATA = "content/ending/ending_text_v1.bin";
    private static final List<Entry> ENTRIES;
    public static final String FRONTEND_EXACT_TEXT = "content/frontend/exact_text_v1.bin";
    public static final String GROUP_ID = "original_content_ready_v1";
    public static final String MISSION_PRESENTATION_TEXT = "content/mission/presentation_text_v1.bin";
    public static final String MISSION_RESULT_DATA = "content/result/mission_result_data_v1.bin";
    private static final List<Entry> STAGE_P_ENTRIES;
    private static final List<Entry> STAGE_Q_ENTRIES;
    private static final List<Entry> STAGE_R_ENTRIES;
    public static final String TUTORIAL_EXACT_TEXT = "content/tutorial/exact_text_v1.bin";

    public static final class Entry {
        public final int length;
        public final String relativePath;
        public final String sha256;

        private Entry(String relativePath, int length, String sha256) {
            this.relativePath = relativePath;
            this.length = length;
            this.sha256 = sha256;
        }
    }

    static {
        ArrayList<Entry> p = new ArrayList<>();
        p.add(new Entry(FRONTEND_EXACT_TEXT, 601, "5d8785dc3f5a83f0e96e0009a42ed844758d39a9fde7968247c29ff214eb6c59"));
        p.add(new Entry("content/mission/presentation_text_v1.bin", 15911, "186e22f098be31e36ed2304f5a0dbf60510ec80d9499187fa3c0ddd3bfa8acd6"));
        STAGE_P_ENTRIES = Collections.unmodifiableList(new ArrayList(p));
        ArrayList<Entry> q = new ArrayList<>();
        q.add(new Entry("content/tutorial/exact_text_v1.bin", 1429, "55dafc450b627c0c1ad29e18032bf17a36720cb90fff2a775a8de7aca6a2e020"));
        STAGE_Q_ENTRIES = Collections.unmodifiableList(new ArrayList(q));
        ArrayList<Entry> r = new ArrayList<>();
        r.add(new Entry("content/result/mission_result_data_v1.bin", 493, "4032f68d190deb3ce9706489ced2f8c298135b3542575bd1af56fe7bde80e642"));
        r.add(new Entry("content/ending/ending_text_v1.bin", 1354, "27cc72eb5ed9923ddc2b6fa3090885b9698d2c84177bc526c59e8fc5b468c3eb"));
        STAGE_R_ENTRIES = Collections.unmodifiableList(new ArrayList(r));
        ArrayList<Entry> all = new ArrayList<>(p);
        all.addAll(q);
        all.addAll(r);
        ENTRIES = Collections.unmodifiableList(all);
    }

    private RomOriginalContentAssetManifest() {
    }

    public static List<Entry> entries() {
        return ENTRIES;
    }

    public static List<Entry> stagePEntries() {
        return STAGE_P_ENTRIES;
    }

    public static List<Entry> stageQEntries() {
        return STAGE_Q_ENTRIES;
    }

    public static List<Entry> stageREntries() {
        return STAGE_R_ENTRIES;
    }

    public static long payloadBytes() {
        long total = 0;
        for (Entry e : ENTRIES) {
            total += e.length;
        }
        return total;
    }

    public static Entry find(String path) {
        if (path == null) {
            return null;
        }
        for (Entry e : ENTRIES) {
            if (e.relativePath.equals(path)) {
                return e;
            }
        }
        return null;
    }
}
