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
public final class RazorNativeUnitEvidence403 {
    public static final String DICTIONARY_SCHEMA = "demulation.razor.403.field-dictionary.v1";
    public static final String SCHEMA = "demulation.razor.403.android-native-initial-units.v1";

    private RazorNativeUnitEvidence403() {
    }

    public static byte[] encode(int[] words, int[] first, String romSha, int variant, int house, int mission, int readSequence, int storedSide, int width, int height) throws IOException {
        int[] iArr = words;
        if (iArr != null && iArr.length >= 3 && iArr[0] == 403) {
            int i = 12;
            if (iArr[2] == 12 && iArr[1] >= 1) {
                if (iArr[1] <= 128 && iArr.length == (iArr[1] * 12) + 3 && first != null && first.length == 11 && romSha != null && romSha.matches("[a-fA-F0-9]{64}") && ((variant == 3 || variant == 4) && house >= 0 && house <= 4 && mission >= 1 && mission <= 9 && readSequence > 0)) {
                    if ((storedSide == 32 || storedSide == 64 || storedSide == 128) && width >= 1 && height >= 1) {
                        if (width <= (storedSide == 128 ? 128 : 64)) {
                            if (height <= (storedSide == 128 ? 128 : 64) && first[10] == iArr[1] && first[7] == storedSide && first[8] == width && first[9] == height) {
                                int stride = storedSide != 128 ? 64 : 128;
                                StringBuilder j = new StringBuilder((iArr[1] * 165) + 240);
                                j.append("{\"schema\":\"").append(SCHEMA).append("\",\"rom_sha256\":\"").append(romSha.toLowerCase(Locale.ROOT)).append("\",\"variant_mib\":").append(variant).append(",\"house\":").append(house).append(",\"mission\":").append(mission).append(",\"read_sequence\":").append(readSequence).append(",\"stored_side\":").append(storedSide).append(",\"width\":").append(width).append(",\"height\":").append(height).append(",\"unit_count\":").append(iArr[1]).append(",\"source_kind\":\"initial scenario records copied into retained Android-native world\"").append(",\"emc_runtime_initialized\":false").append(",\"original_genesis_ram_available\":false").append(",\"genesis_runtime_slot_mapping_proven\":false").append(",\"original_cpu_trace_captured\":false").append(",\"gameplay_ticks_authorized\":false").append(",\"units\":[");
                                int i2 = 0;
                                while (i2 < iArr[1]) {
                                    int p = (i2 * 12) + 3;
                                    int n = 0;
                                    while (n < i) {
                                        if (iArr[p + n] < 0 || iArr[p + n] > 65535) {
                                            throw new IOException("UNIT field exceeds unsigned 16-bit range");
                                        }
                                        n++;
                                        i = 12;
                                        iArr = words;
                                    }
                                    if (words[p] != i2 || words[p + 1] > 255 || words[p + 2] >= 5 || words[p + 3] >= 32 || words[p + 4] >= width || words[p + 5] >= height || words[p + 6] != words[p + 2] || words[p + 7] != words[p + 3] || words[p + 9] != (words[p + 5] * stride) + words[p + 4]) {
                                        throw new IOException("Inconsistent native UNIT source record");
                                    }
                                    if (i2 == 0 && (first[0] != 0 || first[1] != words[p + 1] || first[2] != words[p + 2] || first[3] != words[p + 3] || first[4] != words[p + 4] || first[5] != words[p + 5] || first[6] != words[p + 9])) {
                                        throw new IOException("First UNIT differs from 0.4.395 identity");
                                    }
                                    if (i2 > 0) {
                                        j.append(',');
                                    }
                                    j.append("{\"ordinal\":").append(words[p]).append(",\"source_record_tag\":").append(words[p + 1]).append(",\"owner\":").append(words[p + 2]).append(",\"type\":").append(words[p + 3]).append(",\"x\":").append(words[p + 4]).append(",\"y\":").append(words[p + 5]).append(",\"source_words\":[");
                                    int n2 = 0;
                                    for (int i3 = 6; n2 < i3; i3 = 6) {
                                        if (n2 > 0) {
                                            j.append(',');
                                        }
                                        j.append(words[p + 6 + n2]);
                                        n2++;
                                    }
                                    j.append("]}");
                                    i2++;
                                    i = 12;
                                    iArr = words;
                                }
                                j.append("]}\n");
                                byte[] bytes = j.toString().getBytes(StandardCharsets.UTF_8);
                                if (bytes.length > 32768) {
                                    throw new IOException("UNIT diagnostic exceeds 32 KiB");
                                }
                                return bytes;
                            }
                        }
                    }
                }
            }
        }
        throw new IOException("Invalid native initial UNIT source");
    }

    public static byte[] fieldDictionary() {
        return "{\"schema\":\"demulation.razor.403.field-dictionary.v1\",\"record_word_count\":12,\"source_record_count_max\":128,\"android_origin\":\"DuneRazorNativeWorldHost.units[]\",\"cross_runtime_68k_fields_verified\":false,\"fields\":[{\"name\":\"ordinal\",\"origin\":\"native host array index\",\"genesis_runtime_offset\":null},{\"name\":\"source_record_tag\",\"origin\":\"scenario section 8 record tag\",\"genesis_runtime_offset\":null},{\"name\":\"owner\",\"origin\":\"scenario value[0]\",\"genesis_runtime_offset\":null},{\"name\":\"type\",\"origin\":\"scenario value[1]\",\"genesis_runtime_offset\":null},{\"name\":\"x\",\"origin\":\"decode source_words[3]\",\"genesis_runtime_offset\":null},{\"name\":\"y\",\"origin\":\"decode source_words[3]\",\"genesis_runtime_offset\":null},{\"name\":\"source_words\",\"origin\":\"six unmodified source scenario 16-bit words\",\"known_word_indices\":{\"owner\":0,\"type\":1,\"packed_tile\":3},\"unresolved_word_indices\":[2,4,5],\"genesis_runtime_offset\":null}],\"unavailable\":[\"live_68k_unit_pointer\",\"live_68k_emc_pc\",\"emc_execution_stack\",\"unit_health\",\"unit_action\",\"native_side_effects\"],\"shadow_ram_65536_bytes_exported\":false,\"gameplay_ticks_authorized\":false}\n".getBytes(StandardCharsets.UTF_8);
    }

    private static byte[] readBounded(ZipFile zip, ZipEntry entry, int limit) throws IOException {
        if (entry == null || entry.isDirectory() || entry.getSize() < 1 || entry.getSize() > limit) {
            throw new IOException("Unsafe Razor ZIP member");
        }
        InputStream in = zip.getInputStream(entry);
        try {
            ByteArrayOutputStream b = new ByteArrayOutputStream();
            try {
                byte[] buf = new byte[GenesisObjectArt.VRAM_PATTERN_COUNT];
                while (true) {
                    int n = in.read(buf);
                    if (n != -1) {
                        if (b.size() + n > limit) {
                            throw new IOException("Oversized ZIP data");
                        }
                        b.write(buf, 0, n);
                    } else {
                        byte[] byteArray = b.toByteArray();
                        b.close();
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

    public static File writeEnvelope(File file, File file2, byte[] bArr, String str) throws IOException {
        String str2;
        String[] strArr;
        if (file != null && file.isDirectory() && file2 != null && file2.isFile() && file2.length() <= 65536 && file2.getName().matches("razor395_razor393_[a-f0-9]{12}_h[0-4]_m[1-9]_r[0-9]+_t[0-9]+(_[0-9]+)?[.]zip") && str != null && str.matches("[a-fA-F0-9]{64}") && file2.getName().contains("razor393_" + str.substring(0, 12).toLowerCase(Locale.ROOT)) && bArr != null && bArr.length >= 100 && bArr.length <= 32768) {
            File file3 = new File(file, file2.getName().replace("razor395_", "razor403_"));
            if (!file3.exists()) {
                File createTempFile = File.createTempFile("razor403_", ".zip.tmp", file);
                boolean z = false;
                try {
                    ZipFile zipFile = new ZipFile(file2);
                    try {
                        FileOutputStream fileOutputStream = new FileOutputStream(createTempFile);
                        try {
                            ZipOutputStream zipOutputStream = new ZipOutputStream(fileOutputStream);
                            try {
                                if (zipFile.size() != 3) {
                                    throw new IOException("Unrecognized previous identity ZIP");
                                }
                                String str3 = file2.getName().substring(9, file2.getName().length() - 4) + ".json";
                                if (str3.endsWith(".json") && zipFile.getEntry("ONE_UNIT_IDENTITY_395.json") != null && zipFile.getEntry("CAPTURE_KIND_395.txt") != null) {
                                    boolean z2 = true;
                                    char c = 2;
                                    String[] strArr2 = {str3, "ONE_UNIT_IDENTITY_395.json", "CAPTURE_KIND_395.txt"};
                                    int length = strArr2.length;
                                    int i = 0;
                                    while (i < length) {
                                        String str4 = strArr2[i];
                                        boolean z3 = z2;
                                        char c2 = c;
                                        int i2 = length;
                                        byte[] readBounded = readBounded(zipFile, zipFile.getEntry(str4), 8192);
                                        if (!str4.equals("ONE_UNIT_IDENTITY_395.json")) {
                                            str2 = str3;
                                            strArr = strArr2;
                                        } else {
                                            str2 = str3;
                                            strArr = strArr2;
                                            if (!new String(readBounded, StandardCharsets.UTF_8).contains("\"rom_sha256\":\"" + str.toLowerCase(Locale.ROOT) + "\"")) {
                                                throw new IOException("Legacy identity source ROM differs");
                                            }
                                        }
                                        zipOutputStream.putNextEntry(new ZipEntry(str4));
                                        zipOutputStream.write(readBounded);
                                        zipOutputStream.closeEntry();
                                        i++;
                                        z2 = z3;
                                        c = c2;
                                        length = i2;
                                        str3 = str2;
                                        strArr2 = strArr;
                                    }
                                    byte[][] bArr2 = {bArr, fieldDictionary(), "Android native initial-scenario UNIT record snapshot.\nNOT live Genesis 68000 RAM or live EMC state.\nNo gameplay ticks authorized.\n".getBytes(StandardCharsets.UTF_8)};
                                    String[] strArr3 = new String[3];
                                    strArr3[0] = "INITIAL_UNIT_STATE_403.json";
                                    strArr3[z2 ? 1 : 0] = "FIELD_DICTIONARY_403.json";
                                    strArr3[c] = "CAPTURE_KIND_403.txt";
                                    for (int i3 = 0; i3 < strArr3.length; i3++) {
                                        zipOutputStream.putNextEntry(new ZipEntry(strArr3[i3]));
                                        zipOutputStream.write(bArr2[i3]);
                                        zipOutputStream.closeEntry();
                                    }
                                    zipOutputStream.finish();
                                    fileOutputStream.getFD().sync();
                                    zipOutputStream.close();
                                    fileOutputStream.close();
                                    zipFile.close();
                                    if (!createTempFile.renameTo(file3)) {
                                        throw new IOException("Cannot publish UNIT ZIP atomically");
                                    }
                                    boolean z4 = true;
                                    return file3;
                                }
                                throw new IOException("Missing previous identity evidence");
                            } finally {
                            }
                        } finally {
                        }
                    } finally {
                    }
                } finally {
                    if (!z) {
                        createTempFile.delete();
                    }
                }
            } else {
                throw new IOException("Razor UNIT snapshot already published");
            }
        } else {
            throw new IOException("Invalid 403 envelope inputs");
        }
    }
}
