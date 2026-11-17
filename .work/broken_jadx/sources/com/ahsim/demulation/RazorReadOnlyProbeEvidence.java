package com.ahsim.demulation;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.util.Locale;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

/* loaded from: classes2.dex */
public final class RazorReadOnlyProbeEvidence {
    public static final String SCHEMA = "demulation.razor.android-native-readonly-probe.v1";

    private RazorReadOnlyProbeEvidence() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:78:0x00ca, code lost:
    
        if (r32[3] <= 65535) goto L86;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static byte[] encode(java.lang.String r20, int r21, int r22, int r23, int r24, int r25, int r26, int r27, int r28, boolean r29, boolean r30, int[] r31, int[] r32) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 573
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ahsim.demulation.RazorReadOnlyProbeEvidence.encode(java.lang.String, int, int, int, int, int, int, int, int, boolean, boolean, int[], int[]):byte[]");
    }

    public static File write(File directory, String romSha256, int house, int mission, int readSequence, byte[] bytes) throws IOException {
        if (directory == null || !directory.isDirectory() || romSha256 == null || !romSha256.matches("[a-fA-F0-9]{64}") || house < 0 || house > 4 || mission < 1 || mission > 9 || readSequence <= 0 || bytes == null || bytes.length == 0 || bytes.length > 4096) {
            throw new IOException("Invalid Razor diagnostic destination");
        }
        String fileName = "razor393_" + romSha256.substring(0, 12).toLowerCase(Locale.ROOT) + "_h" + house + "_m" + mission + "_r" + readSequence;
        File destination = null;
        long time = System.currentTimeMillis();
        int n = 0;
        while (true) {
            if (n >= 100) {
                break;
            }
            File candidate = new File(directory, fileName + "_t" + time + (n == 0 ? "" : "_" + n) + ".json");
            if (!candidate.exists()) {
                destination = candidate;
                break;
            }
            n++;
        }
        if (destination == null) {
            throw new IOException("Razor diagnostic name collision");
        }
        File temp = File.createTempFile("razor393_", ".tmp", directory);
        boolean published = false;
        try {
            FileOutputStream out = new FileOutputStream(temp);
            try {
                out.write(bytes);
                out.getFD().sync();
                out.close();
                if (!temp.renameTo(destination)) {
                    throw new IOException("Razor evidence atomic rename failed");
                }
                published = true;
                return destination;
            } finally {
            }
        } finally {
            if (!published) {
                temp.delete();
            }
        }
    }

    public static File zipForSharing(File diagnosticDirectory, File jsonFile) throws IOException {
        if (diagnosticDirectory == null || !diagnosticDirectory.isDirectory() || jsonFile == null || !jsonFile.isFile() || jsonFile.isDirectory() || !jsonFile.getName().matches("razor393_[a-f0-9]{12}_h[0-4]_m[1-9]_r[0-9]+_t[0-9]+(_[0-9]+)?[.]json") || jsonFile.length() < 1 || jsonFile.length() > 4096) {
            throw new IOException("Unsafe Razor diagnostic archive input");
        }
        File target = new File(diagnosticDirectory, jsonFile.getName().substring(0, jsonFile.getName().length() - 5) + ".zip");
        if (target.exists()) {
            throw new IOException("Diagnostic ZIP already exists");
        }
        File temp = File.createTempFile("razor393_", ".zip.tmp", diagnosticDirectory);
        boolean published = false;
        try {
            FileOutputStream raw = new FileOutputStream(temp);
            try {
                ZipOutputStream zip = new ZipOutputStream(raw);
                try {
                    zip.putNextEntry(new ZipEntry(jsonFile.getName()));
                    zip.write(Files.readAllBytes(jsonFile.toPath()));
                    zip.closeEntry();
                    zip.putNextEntry(new ZipEntry("CAPTURE_KIND.txt"));
                    zip.write("Android native read-only Razor diagnostic.\nNOT original Genesis 68000 RAM or BizHawk CPU trace.\nNo native callbacks or game ticks were executed.\n".getBytes(StandardCharsets.UTF_8));
                    zip.closeEntry();
                    zip.finish();
                    raw.getFD().sync();
                    zip.close();
                    raw.close();
                    if (!temp.renameTo(target)) {
                        throw new IOException("Razor diagnostic ZIP publication failed");
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
