package com.ahsim.demulation;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* loaded from: classes2.dex */
public final class RomOriginalContentReadySchema {
    public static final int CURRENT_READY_FORMAT_VERSION = 13;
    private static final List<Entry> ENTRIES = Collections.unmodifiableList(Arrays.asList(m31e("frontend_exact_text", RomOriginalContentAssetManifest.FRONTEND_EXACT_TEXT, Kind.EXACT_TEXT, "04.235P", 8, true, "pointer-free title/menu and House-join strings; original byte order retained"), m31e("mission_presentation_text", "content/mission/presentation_text_v1.bin", Kind.EXACT_TEXT, "04.235P", 8, true, "27 mission records x briefing/victory/defeat/advice; pointer-free indexed strings"), m31e("tutorial_exact_text", "content/tutorial/exact_text_v1.bin", Kind.EXACT_TEXT, "04.235Q", 9, true, "25 inline prose strings plus 128-byte character mapping; interpreter/control opcodes stay compiled"), m31e("mission_result_data", "content/result/mission_result_data_v1.bin", Kind.PRESENTATION_DATA, "04.235R", 10, true, "rank thresholds/names, House labels and 27 next-mission passwords; no ROM pointers"), m31e("ending_text_data", "content/ending/ending_text_v1.bin", Kind.EXACT_TEXT, "04.235R", 10, true, "credit stream bytes with palette control markers; timing/fade logic stays compiled"), m31e("map_scenario_layout_data", RomWorldDataAssetManifest.MAP_SCENARIO_LAYOUT, Kind.SCENARIO_WORLD_DATA, "04.235T", 11, true, "pointer-free normalized map/scenario/layout projection classified by 04.235S; control algorithms stay compiled"), m31e("unit_structure_parameters", RomGameplayDataAssetManifest.UNIT_STRUCTURE_PARAMETERS, Kind.GAME_PARAMETER_DATA, "04.235U", 12, true, "normalized UnitInfo/StructureInfo and related pure parameters; combat/AI/economy algorithms stay compiled"), m31e("remaining_native_pure_data", RomNativeDataAssetManifest.REMAINING_PURE_DATA, Kind.PURE_NATIVE_DATA, "04.235V", 13, true, "remaining classified read-only ROM tables only; no executable/control-flow bytes")));
    public static final int FIRST_CONTENT_READY_FORMAT_VERSION = 8;
    public static final int SCHEMA_VERSION = 1;

    public enum Kind {
        EXACT_TEXT,
        PRESENTATION_DATA,
        SCENARIO_WORLD_DATA,
        GAME_PARAMETER_DATA,
        PURE_NATIVE_DATA
    }

    public static final class Entry {
        public final boolean exactOriginalContent;
        public final boolean executableCode;
        public final int firstReadyFormatVersion;

        /* renamed from: id */
        public final String f66id;
        public final Kind kind;
        public final String migrationStage;
        public final String normalization;
        public final String relativePath;

        private Entry(String id, String relativePath, Kind kind, String migrationStage, int firstReadyFormatVersion, boolean exactOriginalContent, boolean executableCode, String normalization) {
            this.f66id = id;
            this.relativePath = relativePath;
            this.kind = kind;
            this.migrationStage = migrationStage;
            this.firstReadyFormatVersion = firstReadyFormatVersion;
            this.exactOriginalContent = exactOriginalContent;
            this.executableCode = executableCode;
            this.normalization = normalization;
        }
    }

    /* renamed from: e */
    private static Entry m31e(String id, String path, Kind kind, String stage, int readyVersion, boolean exactOriginal, String normalization) {
        if (path == null || (!path.startsWith("content/") && !path.startsWith("data/"))) {
            throw new IllegalArgumentException("Original content/data READY path must use content/ or data/");
        }
        return new Entry(id, path, kind, stage, readyVersion, exactOriginal, false, normalization);
    }

    private RomOriginalContentReadySchema() {
    }

    public static List<Entry> entries() {
        return ENTRIES;
    }

    public static Entry find(String id) {
        if (id == null) {
            return null;
        }
        for (Entry entry : ENTRIES) {
            if (id.equals(entry.f66id)) {
                return entry;
            }
        }
        return null;
    }
}
