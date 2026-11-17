package com.ahsim.demulation;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.Locale;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

/* loaded from: classes2.dex */
public final class RazorPreflightDiagnostic406H {
    public static final String SCHEMA = "demulation.razor.preview-preflight.v1";

    private RazorPreflightDiagnostic406H() {
    }

    public static File create(File diagnosticsDir, String romSha256, int romVariantMiB, int house, int mission, int units, int buildings, int terrainMarkers, String probeStatus, String failure) throws IOException {
        if (diagnosticsDir == null || ((!diagnosticsDir.isDirectory() && !diagnosticsDir.mkdirs()) || romSha256 == null || !romSha256.matches("[0-9a-fA-F]{64}") || ((romVariantMiB != 3 && romVariantMiB != 4) || house < 0 || house > 4 || mission < 1 || mission > 9 || units < -1 || buildings < -1 || terrainMarkers < -1 || (!"NOT_RUN".equals(probeStatus) && !"IN_PROGRESS".equals(probeStatus) && !"FAILED".equals(probeStatus) && !"EXPORT_FAILED".equals(probeStatus))))) {
            throw new IOException("Invalid Razor preflight evidence source");
        }
        String json = "{\n  \"schema\":\"demulation.razor.preview-preflight.v1\",\n  \"capture_kind\":\"PRECHECK_ONLY_NOT_NATIVE_WITNESS\",\n  \"stage\":\"0.4.406H\",\n  \"rom_sha256\":\"" + romSha256.toLowerCase(Locale.ROOT) + "\",\n  \"variant_mib\":" + romVariantMiB + ",\n  \"house\":" + house + ",\n  \"mission\":" + mission + ",\n  \"preview_source_units\":" + units + ",\n  \"preview_source_buildings\":" + buildings + ",\n  \"preview_terrain_markers\":" + terrainMarkers + ",\n  \"native_probe_status\":\"" + probeStatus + "\",\n  \"probe_error\":\"" + escapeJson(failure == null ? "" : failure) + "\",\n  \"emc_runtime_observed\":false,\n  \"original_cpu_trace_captured\":false,\n  \"executed_game_ticks\":0,\n  \"gameplay_authorized\":false\n}\n";
        byte[] jsonBytes = json.getBytes(StandardCharsets.UTF_8);
        if (jsonBytes.length <= 8192) {
            File tmp = File.createTempFile("razor406h_", ".tmp", diagnosticsDir);
            try {
                ZipOutputStream zip = new ZipOutputStream(new FileOutputStream(tmp));
                try {
                    entry(zip, "RAZOR_PREFLIGHT_406H.json", jsonBytes);
                    entry(zip, "README.txt", "PRECHECK ONLY: this archive records preview source and whether native probe was attempted. It is NOT a Razor 68000 witness and cannot authorize gameplay ticks.\n".getBytes(StandardCharsets.UTF_8));
                    zip.close();
                    File published = new File(diagnosticsDir, tmp.getName().replace(".tmp", ".zip"));
                    if (!tmp.renameTo(published)) {
                        throw new IOException("Failed to publish Razor preflight ZIP");
                    }
                    return published;
                } finally {
                }
            } finally {
                if (tmp.exists()) {
                    tmp.delete();
                }
            }
        } else {
            throw new IOException("Razor preflight details exceed limit");
        }
    }

    private static void entry(ZipOutputStream zip, String name, byte[] data) throws IOException {
        zip.putNextEntry(new ZipEntry(name));
        zip.write(data);
        zip.closeEntry();
    }

    private static String escapeJson(String raw) {
        StringBuilder escaped = new StringBuilder();
        for (int i = 0; i < raw.length() && i < 1024; i++) {
            char c = raw.charAt(i);
            if (c == '\\' || c == '\"') {
                escaped.append('\\').append(c);
            } else if (c == '\n') {
                escaped.append("\\n");
            } else if (c == '\r') {
                escaped.append("\\r");
            } else if (c == '\t') {
                escaped.append("\\t");
            } else if (c < ' ') {
                escaped.append(' ');
            } else {
                escaped.append(c);
            }
        }
        return escaped.toString();
    }
}
