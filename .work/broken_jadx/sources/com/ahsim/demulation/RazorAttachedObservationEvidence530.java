package com.ahsim.demulation;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.HashSet;
import java.util.Set;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import java.util.zip.ZipOutputStream;

/* loaded from: classes2.dex */
public final class RazorAttachedObservationEvidence530 {
    private static final String ENTRY = "razor_attached_emc530.json";

    private RazorAttachedObservationEvidence530() {
    }

    public static byte[] encode(int[] w, String sha, int house, int mission) throws IOException {
        if (w == null || w.length != 32 || w[0] != 530 || w[1] != 1 || ((w[7] != 16 && w[7] != 40) || w[29] != 2 || w[31] != 2 || w[26] != 0 || w[27] != 0 || w[28] != 0 || sha == null || !sha.matches("[0-9a-fA-F]{64}") || house < 0 || house > 4 || mission < 1 || mission > 9)) {
            throw new IOException("Unsafe Razor 530 evidence");
        }
        StringBuilder out = new StringBuilder(350);
        out.append("{\"schema\":\"demulation.razor.530.attached-emc.v1\",");
        out.append("\"rom_sha256\":\"").append(sha).append("\",");
        out.append("\"house\":").append(house).append(",\"mission\":").append(mission).append(",\"words\":[");
        for (int i = 0; i < w.length; i++) {
            if (i > 0) {
                out.append(',');
            }
            out.append(w[i]);
        }
        out.append("],\"origin\":\"ANDROID_RETAINED_EMC_REPLAY\",");
        out.append("\"genesis_cpu_authenticated\":false,");
        out.append("\"native_callback_executed\":false,");
        out.append("\"gameplay_ticks\":0}");
        return out.toString().getBytes(StandardCharsets.UTF_8);
    }

    public static File writeEnvelope(File dir, File previous, int[] words, String sha, int house, int mission) throws IOException {
        if (dir == null || previous == null || !previous.isFile() || !dir.isDirectory()) {
            throw new IOException("Missing Razor evidence ZIP");
        }
        byte[] payload = encode(words, sha, house, mission);
        String basename = previous.getName();
        if (basename.endsWith(".zip")) {
            File target = new File(dir, basename.substring(0, basename.length() - 4) + "_530.zip");
            if (!target.equals(previous)) {
                File tmp = File.createTempFile("razor530_", ".part", dir);
                boolean completed = false;
                try {
                    ZipInputStream src = new ZipInputStream(new FileInputStream(previous));
                    try {
                        ZipOutputStream zip = new ZipOutputStream(new FileOutputStream(tmp));
                        try {
                            byte[] buffer = new byte[8192];
                            int entries = 0;
                            long total = 0;
                            Set<String> names = new HashSet<>();
                            while (true) {
                                ZipEntry entry = src.getNextEntry();
                                if (entry != null) {
                                    String name = entry.getName();
                                    entries++;
                                    if (entries > 128 || name.startsWith("/") || name.contains("..") || name.contains("\\") || ENTRY.equals(name) || !names.add(name)) {
                                        break;
                                    }
                                    zip.putNextEntry(new ZipEntry(name));
                                    while (true) {
                                        int count = src.read(buffer);
                                        if (count != -1) {
                                            total += count;
                                            if (total > 10485760) {
                                                throw new IOException("Razor diagnostic ZIP too large");
                                            }
                                            zip.write(buffer, 0, count);
                                        }
                                    }
                                } else {
                                    zip.putNextEntry(new ZipEntry(ENTRY));
                                    zip.write(payload);
                                    zip.closeEntry();
                                    zip.close();
                                    src.close();
                                    if (target.exists() && !target.delete()) {
                                        throw new IOException("Cannot replace stale Razor 530 ZIP");
                                    }
                                    if (!tmp.renameTo(target)) {
                                        throw new IOException("Cannot commit Razor 530 ZIP");
                                    }
                                    completed = true;
                                    return target;
                                }
                                zip.closeEntry();
                                src.closeEntry();
                            }
                            throw new IOException("Unsafe previous Razor evidence ZIP");
                        } finally {
                        }
                    } finally {
                    }
                } finally {
                    if (!completed) {
                        tmp.delete();
                    }
                }
            } else {
                throw new IOException("Cannot overwrite evidence");
            }
        } else {
            throw new IOException("Invalid ZIP name");
        }
    }
}
