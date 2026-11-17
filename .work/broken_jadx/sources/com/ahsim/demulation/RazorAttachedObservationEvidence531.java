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
public final class RazorAttachedObservationEvidence531 {
    public static final String ENTRY = "razor_android_emc_status531.json";

    private RazorAttachedObservationEvidence531() {
    }

    static int bankFingerprint(byte[] bytes) {
        int h = -2128831035;
        for (byte b : bytes) {
            h = ((b & 255) ^ h) * 16777619;
        }
        return h;
    }

    public static void verify(int[] w, int[] unitRows, byte[] unitBank) throws IOException {
        if (w == null || w.length != 32 || w[0] != 530 || w[1] != 1 || ((w[7] != 16 && w[7] != 40) || w[29] != 2 || w[31] != 2 || w[26] != 0 || w[27] != 0 || w[28] != 0 || unitBank == null || unitBank.length != 5484 || unitRows == null || unitRows.length < 3 || unitRows[0] != 403 || unitRows[2] != 12 || unitRows[1] < 1 || unitRows[1] > 128 || unitRows.length != (unitRows[1] * 12) + 3)) {
            throw new IOException("Razor 531 invalid observation identity");
        }
        int ordinal = w[2];
        if (ordinal < 0 || ordinal >= unitRows[1] || w[8] < 0 || w[8] > 128 || w[9] < 0 || w[9] > 15 || w[10] < 0 || w[10] > 17 || w[30] < 1 || w[30] > 32 || ((w[13] == 0 && w[14] == 0) || ((w[15] == 0 && w[16] == 0) || w[11] != bankFingerprint(unitBank)))) {
            throw new IOException("Razor 531 bank/event/ordinal mismatch");
        }
        int p = (ordinal * 12) + 3;
        if (unitRows[p] != ordinal || unitRows[p + 2] != w[4] || unitRows[p + 3] != w[3] || unitRows[p + 4] < 0 || unitRows[p + 5] < 0) {
            throw new IOException("Razor 531 retained-world owner mismatch");
        }
    }

    private static String escape(String text) {
        if (text == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        int n = Math.min(text.length(), 160);
        for (int i = 0; i < n; i++) {
            char c = text.charAt(i);
            if (c == '\\' || c == '\"') {
                sb.append('\\').append(c);
            } else if (c < ' ' || c > '~') {
                sb.append('_');
            } else {
                sb.append(c);
            }
        }
        return sb.toString();
    }

    public static byte[] status(String sha, int house, int mission, String outcome, String reason, int[] verified) throws IOException {
        if (sha == null || !sha.matches("[0-9a-fA-F]{64}") || house < 0 || house >= 5 || mission < 1 || mission > 9 || ((!"OBSERVED".equals(outcome) && !"FAILED".equals(outcome) && !"SKIPPED".equals(outcome)) || ("OBSERVED".equals(outcome) && (verified == null || verified.length != 32)))) {
            throw new IOException("Invalid Razor 531 status parameters");
        }
        StringBuilder sb = new StringBuilder(400);
        sb.append("{\"schema\":\"demulation.razor.531.android-emc-status.v1\",").append("\"source_rom_sha256\":\"").append(sha).append("\",").append("\"house\":").append(house).append(",\"mission\":").append(mission).append(",\"outcome\":\"").append(outcome).append("\",").append("\"reason\":\"").append(escape(reason)).append("\",").append("\"android_world_owner_verified\":").append("OBSERVED".equals(outcome)).append(",\"genesis_cpu_authenticated\":false,").append("\"native_callback_executed\":false,\"gameplay_ticks\":0");
        if (verified != null && "OBSERVED".equals(outcome)) {
            sb.append(",\"emc_ordinal\":").append(verified[2]).append(",\"emc_native_id\":").append(verified[7]).append(",\"emc_steps\":").append(verified[8]);
        }
        sb.append('}');
        return sb.toString().getBytes(StandardCharsets.UTF_8);
    }

    public static File append(File dir, File previous, String sha, int house, int mission, String outcome, String reason, int[] verified) throws IOException {
        Set<String> names;
        if (dir == null || !dir.isDirectory() || previous == null || !previous.isFile() || !previous.getName().endsWith(".zip")) {
            throw new IOException("Razor 531 previous evidence ZIP unavailable");
        }
        byte[] payload = status(sha, house, mission, outcome, reason, verified);
        File target = new File(dir, previous.getName().replaceFirst("\\.zip$", "_531.zip"));
        if (!target.equals(previous)) {
            File temp = File.createTempFile("razor531_", ".part", dir);
            boolean ok = false;
            try {
                ZipInputStream zin = new ZipInputStream(new FileInputStream(previous));
                try {
                    ZipOutputStream zout = new ZipOutputStream(new FileOutputStream(temp));
                    try {
                        Set<String> names2 = new HashSet<>();
                        byte[] b = new byte[8192];
                        int entries = 0;
                        long total = 0;
                        while (true) {
                            ZipEntry entry = zin.getNextEntry();
                            if (entry != null) {
                                String name = entry.getName();
                                entries++;
                                if (entries > 128 || name.isEmpty() || name.startsWith("/")) {
                                    break;
                                }
                                if (name.contains("..") || name.contains("\\")) {
                                    break;
                                }
                                if (name.equals(ENTRY) || !names2.add(name)) {
                                    break;
                                }
                                zout.putNextEntry(new ZipEntry(name));
                                while (true) {
                                    int read = zin.read(b);
                                    names = names2;
                                    if (read != -1) {
                                        total += read;
                                        if (total > 10485760) {
                                            throw new IOException("Razor 531 ZIP size exceeded");
                                        }
                                        zout.write(b, 0, read);
                                        names2 = names;
                                    }
                                }
                                throw new IOException("Razor 531 invalid existing ZIP entry");
                            }
                            zout.putNextEntry(new ZipEntry(ENTRY));
                            zout.write(payload);
                            zout.closeEntry();
                            zout.close();
                            zin.close();
                            if (target.exists() && !target.delete()) {
                                throw new IOException("Razor 531 previous status could not be replaced");
                            }
                            if (!temp.renameTo(target)) {
                                throw new IOException("Razor 531 ZIP commit failed");
                            }
                            ok = true;
                            return target;
                            zout.closeEntry();
                            zin.closeEntry();
                            names2 = names;
                        }
                        throw new IOException("Razor 531 invalid existing ZIP entry");
                    } finally {
                    }
                } finally {
                }
            } finally {
                if (!ok) {
                    temp.delete();
                }
            }
        } else {
            throw new IOException("Razor 531 cannot overwrite source");
        }
    }
}
