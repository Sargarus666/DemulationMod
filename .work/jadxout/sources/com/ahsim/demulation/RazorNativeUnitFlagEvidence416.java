package com.ahsim.demulation;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.util.Locale;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import java.util.zip.ZipOutputStream;

/* loaded from: classes2.dex */
public final class RazorNativeUnitFlagEvidence416 {
    public static final String SCHEMA = "demulation.razor.416.native-unit-flag-prestate.v1";

    private RazorNativeUnitFlagEvidence416() {
    }

    private static int u16(byte[] b, int p) {
        return ((b[p] & 255) << 8) | (b[p + 1] & 255);
    }

    public static byte[] encode(int[] native416, int[] source403, byte[] map411, String romSha, int variant, int house, int mission, int sequence) throws IOException {
        int[] iArr = native416;
        if (iArr != null && source403 != null && map411 != null) {
            int i = 6;
            if (iArr.length >= 6 && source403.length >= 3 && map411.length >= 45 && romSha != null && romSha.matches("[a-fA-F0-9]{64}") && ((variant == 3 || variant == 4) && house >= 0 && house <= 4 && mission >= 1 && mission <= 9 && sequence >= 1 && iArr[0] == 416 && iArr[2] == 12 && iArr[3] == 1 && iArr[4] == 0 && iArr[5] == 0 && source403[0] == 403 && source403[2] == 12 && iArr[1] >= 1 && iArr[1] <= 128 && iArr[1] == source403[1] && iArr.length == (iArr[1] * 12) + 6 && source403.length == (iArr[1] * 12) + 3 && map411[0] == 82 && map411[1] == 52 && map411[2] == 49 && map411[3] == 49 && u16(map411, 4) == 411 && u16(map411, 14) == iArr[1])) {
                int side = u16(map411, 6);
                int width = u16(map411, 8);
                int height = u16(map411, 10);
                if ((side != 32 && side != 64 && side != 128) || width < 1 || height < 1 || width > side || height > side || map411.length != (side * 5 * side) + 40) {
                    throw new IOException("Invalid 416 map geometry");
                }
                StringBuilder out = new StringBuilder(2500);
                out.append("{\"schema\":\"").append(SCHEMA).append("\",\"rom_sha256\":\"").append(romSha.toLowerCase(Locale.ROOT)).append("\",\"variant_mib\":").append(variant).append(",\"house\":").append(house).append(",\"mission\":").append(mission).append(",\"read_sequence\":").append(sequence).append(",\"host_source\":\"retained native Razor bootstrap world\"").append(",\"unit_count\":").append(iArr[1]).append(",\"observed_host_fields\":[\"owner\",\"type\",\"x\",\"y\",\"source_index\",\"packed_tile\"]").append(",\"genesis_unit_base\":\"0xFF0DAC\",\"genesis_unit_stride\":140").append(",\"genesis_flag_offset\":9").append(",\"genesis_flag_value_available\":false").append(",\"persistent_android_razor_runtime\":false").append(",\"genesis_slot_identity_proven\":false").append(",\"flag_write_abi_authorized\":false").append(",\"executed_game_ticks\":0,\"gameplay_authorized\":false").append(",\"units\":[");
                int i2 = 0;
                while (i2 < iArr[1]) {
                    int n = (i2 * 12) + i;
                    int p = (i2 * 12) + 3;
                    int k = 0;
                    while (k < i) {
                        if (iArr[n + k] != source403[p + k]) {
                            throw new IOException("Native 416 identity mismatch");
                        }
                        k++;
                        i = 6;
                        iArr = native416;
                    }
                    if (native416[n + 6] == source403[p + 9] && native416[n + 7] == 0 && native416[n + 8] == -1 && native416[n + 9] == -1 && native416[n + 10] == -1 && native416[n + 11] == 0 && native416[n] == i2 && native416[n + 2] >= 0 && native416[n + 2] < 5 && native416[n + 3] >= 0 && native416[n + 3] < 32 && native416[n + 4] >= 0 && native416[n + 4] < width && native416[n + 5] >= 0 && native416[n + 5] < height) {
                        if (native416[n + 6] == (native416[n + 5] * (side == 128 ? 128 : 64)) + native416[n + 4]) {
                            if (i2 > 0) {
                                out.append(',');
                            }
                            out.append("{\"ordinal\":").append(i2).append(",\"source_index\":").append(native416[n + 1]).append(",\"owner\":").append(native416[n + 2]).append(",\"type\":").append(native416[n + 3]).append(",\"x\":").append(native416[n + 4]).append(",\"y\":").append(native416[n + 5]).append(",\"packed_tile\":").append(native416[n + 6]).append(",\"genesis_flag_value\":null").append(",\"genesis_slot\":null").append(",\"runtime_generation\":null}");
                            i2++;
                            i = 6;
                            iArr = native416;
                        }
                    }
                    throw new IOException("Unverified or fabricated 68K flag field");
                }
                out.append("]}\n");
                return out.toString().getBytes(StandardCharsets.UTF_8);
            }
        }
        throw new IOException("Invalid 416 native observation provenance");
    }

    public static byte[] gateContract() {
        return "{\"schema\":\"demulation.razor.416.one-unit-f40-prestate-gate.v1\",\"observed\":\"native initial UNIT identity read from retained HOST\",\"runtime_flag_offset\":9,\"runtime_flag_known\":false,\"source_words_are_not_flags\":true,\"genesis_runtime_slot_confirmed\":false,\"matched_original_f40_prestate\":false,\"real_cpu_witness_present\":false,\"can_compare_f40_object_flag_delta\":false,\"can_commit_shadow_transaction\":false,\"allow_game_tick\":false,\"blocker\":\"NO_PERSISTENT_RAZOR_UNIT_FLAG_ABI_AND_NO_GENUINE_68K_F40_TRACE\"}\n".getBytes(StandardCharsets.UTF_8);
    }

    private static byte[] bounded(ZipFile zip, ZipEntry entry, int max) throws IOException {
        if (entry == null || entry.isDirectory() || entry.getSize() < 1 || entry.getSize() > max) {
            throw new IOException("Invalid 411 member");
        }
        InputStream in = zip.getInputStream(entry);
        try {
            ByteArrayOutputStream out = new ByteArrayOutputStream();
            try {
                byte[] buf = new byte[DuneHackR82ScenarioRecordDecoder.MAX_RECORDS];
                while (true) {
                    int n = in.read(buf);
                    if (n != -1) {
                        if (out.size() + n > max) {
                            throw new IOException("Oversized 411 member");
                        }
                        out.write(buf, 0, n);
                    } else {
                        byte[] byteArray = out.toByteArray();
                        out.close();
                        if (in != null) {
                            in.close();
                        }
                        return byteArray;
                    }
                }
            } finally {
            }
        } catch (Throwable th) {
            if (in != null) {
                try {
                    in.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    public static File writeEnvelope(File dir, File predecessor, byte[] report, String romSha) throws IOException {
        if (dir != null && dir.isDirectory() && predecessor != null && predecessor.isFile() && predecessor.length() <= 150000 && predecessor.getName().matches("razor411_razor393_[a-f0-9]{12}_h[0-4]_m[1-9]_r[0-9]+_t[0-9]+(_[0-9]+)?[.]zip") && romSha != null && romSha.matches("[a-fA-F0-9]{64}") && predecessor.getName().contains("razor393_" + romSha.substring(0, 12).toLowerCase(Locale.ROOT)) && report != null && report.length >= 450 && report.length <= 32768 && new String(report, StandardCharsets.UTF_8).contains("\"rom_sha256\":\"" + romSha.toLowerCase(Locale.ROOT) + "\"")) {
            File target = new File(dir, predecessor.getName().replaceFirst("^razor411_", "razor416_"));
            if (!target.exists()) {
                File tmp = File.createTempFile("razor416_", ".tmp", dir);
                boolean published = false;
                try {
                    ZipFile input = new ZipFile(predecessor);
                    try {
                        FileOutputStream f = new FileOutputStream(tmp);
                        try {
                            ZipOutputStream zip = new ZipOutputStream(f);
                            try {
                                if (input.size() != 12) {
                                    throw new IOException("Unexpected 411 archive members");
                                }
                                String origin = predecessor.getName().substring("razor411_".length(), predecessor.getName().length() - 4) + ".json";
                                char c = 2;
                                String[] names = {origin, "ONE_UNIT_IDENTITY_395.json", "CAPTURE_KIND_395.txt", "INITIAL_UNIT_STATE_403.json", "FIELD_DICTIONARY_403.json", "CAPTURE_KIND_403.txt", "TRANSIENT_UNIT_EMC_SHADOW_405.json", "CAPTURE_KIND_405.txt", "HOST_MAP_CELLS_411.bin", "HOST_MAP_MANIFEST_411.json", "TILE_PRESTATE_CONTRACT_411.json", "CAPTURE_KIND_411.txt"};
                                int length = names.length;
                                int i = 0;
                                while (i < length) {
                                    String name = names[i];
                                    String origin2 = origin;
                                    byte[] bytes = bounded(input, input.getEntry(name), 100000);
                                    zip.putNextEntry(new ZipEntry(name));
                                    zip.write(bytes);
                                    zip.closeEntry();
                                    i++;
                                    c = c;
                                    origin = origin2;
                                }
                                String[] additions = new String[3];
                                additions[0] = "NATIVE_UNIT_FLAG_PRESTATE_416.json";
                                additions[1] = "ONE_UNIT_F40_ABI_GATE_416.json";
                                additions[c] = "CAPTURE_KIND_416.txt";
                                byte[][] payloads = {report, gateContract(), "Real read-only native HOST unit identity; Genesis UNIT+9 flags UNAVAILABLE; no ticks.\n".getBytes(StandardCharsets.UTF_8)};
                                for (int i2 = 0; i2 < additions.length; i2++) {
                                    zip.putNextEntry(new ZipEntry(additions[i2]));
                                    zip.write(payloads[i2]);
                                    zip.closeEntry();
                                }
                                zip.finish();
                                f.getFD().sync();
                                zip.close();
                                f.close();
                                input.close();
                                if (!tmp.renameTo(target)) {
                                    throw new IOException("Cannot publish Razor 416 ZIP");
                                }
                                published = true;
                                return target;
                            } finally {
                            }
                        } finally {
                        }
                    } finally {
                    }
                } finally {
                    if (!published) {
                        tmp.delete();
                    }
                }
            } else {
                throw new IOException("Razor 416 archive already exists");
            }
        } else {
            throw new IOException("Unsafe Razor 416 archive inputs");
        }
    }
}
