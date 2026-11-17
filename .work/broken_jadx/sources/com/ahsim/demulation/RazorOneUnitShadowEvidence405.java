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
public final class RazorOneUnitShadowEvidence405 {
    public static final String SCHEMA = "demulation.razor.405.transient-emc-unit-shadow.v1";

    private RazorOneUnitShadowEvidence405() {
    }

    public static byte[] encode(int[] v, int[] unit403, int[] first395, String romSha, int variant, int house, int mission, int sequence) throws IOException {
        if (v != null && v.length == 37 && v[0] == 405 && v[1] == 0 && unit403 != null && unit403.length >= 15 && unit403[0] == 403 && unit403[1] >= 1 && unit403[2] == 12 && first395 != null && first395.length == 11 && romSha != null && romSha.matches("[a-fA-F0-9]{64}") && ((variant == 3 || variant == 4) && house >= 0 && house <= 4 && mission >= 1 && mission <= 9 && sequence > 0 && v[2] <= 255 && v[2] >= 0 && v[3] >= 0 && v[3] < 5 && v[4] >= 0 && v[4] < 32 && v[5] >= 0 && v[5] <= 127)) {
            int i = 6;
            if (v[6] >= 0 && v[6] <= 127 && v[13] >= 0 && v[13] < 27 && v[14] >= 0 && v[15] >= 0 && v[15] <= 2742 && v[16] >= 0 && v[16] <= 24) {
                char c = 17;
                if (v[17] == 1 && v[18] >= 0 && v[18] <= 63 && v[19] == 0 && v[20] >= 0 && v[20] <= 15 && v[21] >= 0 && v[21] <= 15 && v[22] >= 0 && v[22] <= 17 && v[20] == 15 - v[21] && v[33] == 1836472757 && v[34] == 0 && v[35] == 0 && v[36] == 0 && v[1] == first395[0] && v[2] == first395[1] && v[3] == first395[2] && v[4] == first395[3] && v[5] == first395[4] && v[6] == first395[5]) {
                    int i2 = 0;
                    while (i2 < i) {
                        int i3 = i;
                        char c2 = c;
                        if (v[i2 + 7] != unit403[i2 + 9] || v[i2 + 7] < 0 || v[i2 + 7] > 65535) {
                            throw new IOException("Shadow UNIT does not match 403 source words");
                        }
                        i2++;
                        i = i3;
                        c = c2;
                    }
                    int i4 = i;
                    char c3 = c;
                    for (int i5 = 0; i5 < 5; i5++) {
                        if (v[i5 + 28] < 0 || v[i5 + 28] > 65535) {
                            throw new IOException("Invalid shadow variable");
                        }
                    }
                    for (int i6 = 0; i6 < 4; i6++) {
                        if (v[i6 + 24] < 0 || v[i6 + 24] > 65535 || (i6 >= v[20] && v[i6 + 24] != 0)) {
                            throw new IOException("Invalid shadow stack");
                        }
                    }
                    if (v[23] < 0 || v[23] > 65535 || v[14] > 2742 || v[2] != unit403[4] || v[3] != unit403[5] || v[4] != unit403[i4] || v[5] != unit403[7] || v[i4] != unit403[8]) {
                        throw new IOException("Shadow identity disagrees with native UNIT");
                    }
                    StringBuilder b = new StringBuilder(900);
                    b.append("{\"schema\":\"").append(SCHEMA).append("\",\"rom_sha256\":\"").append(romSha.toLowerCase(Locale.ROOT)).append("\",\"variant_mib\":").append(variant).append(",\"house\":").append(house).append(",\"mission\":").append(mission).append(",\"read_sequence\":").append(sequence).append(",\"unit_ordinal\":").append(v[1]).append(",\"source_record_tag\":").append(v[2]).append(",\"owner\":").append(v[3]).append(",\"type\":").append(v[4]).append(",\"x\":").append(v[5]).append(",\"y\":").append(v[i4]).append(",\"source_words\":[");
                    for (int i7 = 7; i7 <= 12; i7++) {
                        if (i7 > 7) {
                            b.append(',');
                        }
                        b.append(v[i7]);
                    }
                    b.append("],\"isolated_vm\":{\"entry\":").append(v[13]).append(",\"start_pc\":").append(v[14]).append(",\"stop_pc\":").append(v[15]).append(",\"instructions\":").append(v[16]).append(",\"stop_reason\":").append(v[c3]).append(",\"pending_native_function\":").append(v[18]).append(",\"vm_error\":").append(v[19]).append(",\"stack_depth\":").append(v[20]).append(",\"stack_pointer\":").append(v[21]).append(",\"frame_pointer\":").append(v[22]).append(",\"return_value\":").append(v[23]).append(",\"stack_top\":[");
                    for (int i8 = 24; i8 < 28; i8++) {
                        if (i8 > 24) {
                            b.append(',');
                        }
                        b.append(v[i8]);
                    }
                    b.append("],\"variables\":[");
                    for (int i9 = 28; i9 < 33; i9++) {
                        if (i9 > 28) {
                            b.append(',');
                        }
                        b.append(v[i9]);
                    }
                    b.append("],\"bank_fnv32\":\"0x").append(String.format(Locale.ROOT, "%08x", Integer.valueOf(v[33]))).append("\"},\"origin\":\"isolated temporary Android-native EMC interpreter\"").append(",\"persistent_emc_runtime_exists\":false").append(",\"genesis_68k_emc_pc_captured\":false").append(",\"genesis_runtime_unit_identity_proven\":false").append(",\"native_callback_executed\":false").append(",\"executed_game_ticks\":0,\"gameplay_authorized\":false}\n");
                    return b.toString().getBytes(StandardCharsets.UTF_8);
                }
            }
        }
        throw new IOException("Invalid isolated UNIT/EMC witness");
    }

    private static byte[] bounded(ZipFile zip, ZipEntry entry, int max) throws IOException {
        if (entry == null || entry.isDirectory() || entry.getSize() < 1 || entry.getSize() > max) {
            throw new IOException("Invalid predecessor ZIP member");
        }
        InputStream in = zip.getInputStream(entry);
        try {
            ByteArrayOutputStream out = new ByteArrayOutputStream();
            try {
                byte[] buf = new byte[GenesisObjectArt.VRAM_PATTERN_COUNT];
                while (true) {
                    int n = in.read(buf);
                    if (n != -1) {
                        if (out.size() + n > max) {
                            throw new IOException("Unsafe diagnostic ZIP member");
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

    public static File writeEnvelope(File directory, File zip403, byte[] json, String romSha) throws IOException {
        if (directory != null && directory.isDirectory() && zip403 != null && zip403.isFile() && zip403.length() <= 131072 && zip403.getName().matches("razor403_razor393_[a-f0-9]{12}_h[0-4]_m[1-9]_r[0-9]+_t[0-9]+(_[0-9]+)?[.]zip") && romSha != null && romSha.matches("[a-fA-F0-9]{64}")) {
            int i = 0;
            if (zip403.getName().contains("razor393_" + romSha.substring(0, 12).toLowerCase(Locale.ROOT)) && json != null && json.length >= 250 && json.length <= 4096 && new String(json, StandardCharsets.UTF_8).contains("\"rom_sha256\":\"" + romSha.toLowerCase(Locale.ROOT) + "\"")) {
                File target = new File(directory, zip403.getName().replaceFirst("^razor403_", "razor405_"));
                if (!target.exists()) {
                    File temp = File.createTempFile("razor405_", ".tmp", directory);
                    boolean finished = false;
                    try {
                        ZipFile z = new ZipFile(zip403);
                        try {
                            FileOutputStream f = new FileOutputStream(temp);
                            try {
                                ZipOutputStream out = new ZipOutputStream(f);
                                try {
                                    if (z.size() != 6) {
                                        throw new IOException("Unexpected 403 envelope membership");
                                    }
                                    String origin = zip403.getName().substring("razor403_".length(), zip403.getName().length() - 4) + ".json";
                                    String[] names = {origin, "ONE_UNIT_IDENTITY_395.json", "CAPTURE_KIND_395.txt", "INITIAL_UNIT_STATE_403.json", "FIELD_DICTIONARY_403.json", "CAPTURE_KIND_403.txt"};
                                    int length = names.length;
                                    while (i < length) {
                                        String name = names[i];
                                        String origin2 = origin;
                                        byte[] content = bounded(z, z.getEntry(name), 32768);
                                        out.putNextEntry(new ZipEntry(name));
                                        out.write(content);
                                        out.closeEntry();
                                        i++;
                                        origin = origin2;
                                    }
                                    out.putNextEntry(new ZipEntry("TRANSIENT_UNIT_EMC_SHADOW_405.json"));
                                    out.write(json);
                                    out.closeEntry();
                                    out.putNextEntry(new ZipEntry("CAPTURE_KIND_405.txt"));
                                    out.write("TRANSIENT isolated EMC witness for initial UNIT 0. NOT a persistent EMC runtime or Genesis RAM; zero game ticks.\n".getBytes(StandardCharsets.UTF_8));
                                    out.closeEntry();
                                    out.finish();
                                    f.getFD().sync();
                                    out.close();
                                    f.close();
                                    z.close();
                                    if (!temp.renameTo(target)) {
                                        throw new IOException("Cannot publish shadow ZIP");
                                    }
                                    finished = true;
                                    return target;
                                } finally {
                                }
                            } finally {
                            }
                        } finally {
                        }
                    } finally {
                        if (!finished) {
                            temp.delete();
                        }
                    }
                } else {
                    throw new IOException("Razor shadow ZIP already exists");
                }
            }
        }
        throw new IOException("Unsafe 405 ZIP inputs");
    }
}
