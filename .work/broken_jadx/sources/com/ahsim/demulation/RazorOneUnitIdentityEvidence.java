package com.ahsim.demulation;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Locale;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

/* loaded from: classes2.dex */
public final class RazorOneUnitIdentityEvidence {
    private RazorOneUnitIdentityEvidence() {
    }

    private static String sha(byte[] bytes) throws IOException {
        try {
            byte[] h = MessageDigest.getInstance("SHA-256").digest(bytes);
            StringBuilder out = new StringBuilder(64);
            for (byte b : h) {
                out.append(String.format(Locale.ROOT, "%02x", Integer.valueOf(b & 255)));
            }
            return out.toString();
        } catch (NoSuchAlgorithmException ex) {
            throw new IOException("SHA-256 unavailable", ex);
        }
    }

    public static byte[] encode(byte[] prior, int[] unit, byte[] scenario, String romSha, int house, int mission) throws IOException {
        if (prior != null && prior.length >= 1 && prior.length <= 4096 && scenario != null && scenario.length >= 4 && scenario.length <= 65536 && romSha != null && romSha.matches("[a-fA-F0-9]{64}") && house >= 0 && house <= 4 && mission >= 1 && mission <= 9 && unit != null && unit.length == 11 && unit[0] == 0 && unit[1] >= 0 && unit[1] <= 255 && unit[2] >= 0 && unit[2] < 5 && unit[3] >= 0 && unit[3] < 32 && ((unit[7] == 32 || unit[7] == 64 || unit[7] == 128) && unit[8] >= 1 && unit[8] <= 128 && unit[9] >= 1 && unit[9] <= 128 && unit[4] >= 0 && unit[4] < unit[8] && unit[5] >= 0 && unit[5] < unit[9] && unit[6] >= 0 && unit[6] <= 16383 && unit[10] >= 1 && unit[10] <= 128)) {
            if (unit[6] == (unit[5] * (unit[7] == 128 ? 128 : 64)) + unit[4]) {
                String text = "{\"schema\":\"demulation.razor.395.scenario-first-unit.v1\",\"rom_sha256\":\"" + romSha.toLowerCase(Locale.ROOT) + "\",\"house\":" + house + ",\"mission\":" + mission + ",\"legacy_evidence_sha256\":\"" + sha(prior) + "\",\"scenario_sha256\":\"" + sha(scenario) + "\",\"source_unit_ordinal\":" + unit[0] + ",\"source_record_tag\":" + unit[1] + ",\"source_owner\":" + unit[2] + ",\"source_type\":" + unit[3] + ",\"tile_x\":" + unit[4] + ",\"tile_y\":" + unit[5] + ",\"source_packed_tile\":" + unit[6] + ",\"stored_side\":" + unit[7] + ",\"map_width\":" + unit[8] + ",\"map_height\":" + unit[9] + ",\"scenario_unit_count\":" + unit[10] + ",\"emulator_runtime_identity_proven\":false,\"native_to_68k_slot_mapping_proven\":false,\"original_68k_trace_captured\":false,\"game_ticks_authorized\":false}\n";
                return text.getBytes(StandardCharsets.UTF_8);
            }
        }
        throw new IOException("Invalid source UNIT identity / scenario witness");
    }

    public static File writeEnvelope(File directory, File original, byte[] originalBytes, int[] unit, byte[] scenario, String romSha, int house, int mission) throws IOException {
        if (directory == null || !directory.isDirectory() || original == null || !original.isFile() || !original.getName().matches("razor393_[a-f0-9]{12}_h[0-4]_m[1-9]_r[1-9][0-9]*_t[0-9]+(_[0-9]+)?[.]json")) {
            throw new IOException("Unrecognized legacy Razor evidence");
        }
        byte[] identity = encode(originalBytes, unit, scenario, romSha, house, mission);
        String base = original.getName().substring(0, original.getName().length() - 5);
        File target = new File(directory, "razor395_" + base + ".zip");
        if (target.exists()) {
            throw new IOException("Razor identity envelope exists");
        }
        File temp = File.createTempFile("razor395_", ".zip.tmp", directory);
        boolean published = false;
        try {
            FileOutputStream raw = new FileOutputStream(temp);
            try {
                ZipOutputStream zip = new ZipOutputStream(raw);
                try {
                    zip.putNextEntry(new ZipEntry(original.getName()));
                    zip.write(originalBytes);
                    zip.closeEntry();
                    zip.putNextEntry(new ZipEntry("ONE_UNIT_IDENTITY_395.json"));
                    zip.write(identity);
                    zip.closeEntry();
                    zip.putNextEntry(new ZipEntry("CAPTURE_KIND_395.txt"));
                    zip.write("Android native initial-scenario UNIT identity, read-only.\nNOT Genesis 68K runtime object identity or CPU trace.\nNo gameplay ticks authorized.\n".getBytes(StandardCharsets.UTF_8));
                    zip.closeEntry();
                    zip.finish();
                    raw.getFD().sync();
                    zip.close();
                    raw.close();
                    if (!temp.renameTo(target)) {
                        throw new IOException("Failed atomic 395 envelope commit");
                    }
                    published = true;
                    return target;
                } finally {
                }
            } finally {
            }
        } finally {
            if (!published) {
                temp.delete();
            }
        }
    }
}
