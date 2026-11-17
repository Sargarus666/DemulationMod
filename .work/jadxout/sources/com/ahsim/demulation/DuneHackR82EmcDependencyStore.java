package com.ahsim.demulation;

import android.content.Context;
import com.ahsim.demulation.DuneHackR82EmcDependencyProbe;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.Locale;

/* loaded from: classes2.dex */
public final class DuneHackR82EmcDependencyStore {
    private static final String REPORT = "dependency.txt";
    private static final String ROOT = "r82c_emc_dependency_audit_v1";

    private DuneHackR82EmcDependencyStore() {
    }

    public static String auditText(String sourceHash, DuneHackR82EmcDependencyProbe.Result result) throws IOException {
        if (sourceHash == null || !sourceHash.matches("[0-9a-fA-F]{64}") || result == null || !result.scriptsIdentified() || !sourceHash.equalsIgnoreCase(result.sourceSha256)) {
            throw new IOException("R82C EMC audit identity mismatch");
        }
        StringBuilder s = new StringBuilder(RazorTerrainAtlas.HEIGHT);
        s.append("R82C_EMC_DEPENDENCIES_V1\nsource_sha256=").append(sourceHash.toLowerCase(Locale.US)).append('\n');
        append(s, result.build);
        append(s, result.team);
        append(s, result.unit);
        s.append("scenario_unit_types=32\nunit_emc_entries=27\n").append("extra_unit_dispatch=native_asm_requires_audit\n").append("verified_reference_troop_parameters=").append(result.verifiedTroopParameters).append('\n').append("native_function_abi=unverified\n").append("game_ready=false\noverlay=false\nexecute_scripts=false\n");
        return s.toString();
    }

    private static void append(StringBuilder s, DuneHackR82EmcDependencyProbe.Script script) {
        s.append("emc_").append(script.name).append("_offset=").append(String.format(Locale.US, "0x%X", Integer.valueOf(script.offset))).append('\n').append("emc_").append(script.name).append("_bytes=").append(script.length).append('\n').append("emc_").append(script.name).append("_entries=").append(script.entries).append('\n').append("emc_").append(script.name).append("_data_words=").append(script.dataWords).append('\n').append("emc_").append(script.name).append("_sha256=").append(script.sha256).append('\n').append("emc_").append(script.name).append("_variant=").append(script.variant).append('\n');
    }

    public static String save(Context context, String sourceHash, DuneHackR82EmcDependencyProbe.Result result) throws IOException {
        if (context == null) {
            throw new IOException("Missing R82C audit context");
        }
        String key = sourceHash == null ? "" : sourceHash.toLowerCase(Locale.US);
        byte[] expected = auditText(key, result).getBytes(StandardCharsets.US_ASCII);
        if (expected.length > 8192) {
            throw new IOException("R82C EMC metadata oversized");
        }
        File root = new File(context.getFilesDir(), ROOT);
        if (!root.isDirectory() && !root.mkdirs()) {
            throw new IOException("EMC metadata directory unavailable");
        }
        File target = new File(root, key);
        if (valid(target, expected)) {
            return "cached";
        }
        File stage = new File(root, key + ".tmp." + Long.toHexString(System.nanoTime()));
        if (!stage.mkdir()) {
            throw new IOException("EMC audit staging unavailable");
        }
        try {
            FileOutputStream f = new FileOutputStream(new File(stage, REPORT));
            try {
                f.write(expected);
                f.getFD().sync();
                f.close();
                if (!valid(stage, expected)) {
                    throw new IOException("EMC metadata verification failed");
                }
                if (target.exists()) {
                    deleteTree(target);
                }
                if (!stage.renameTo(target)) {
                    throw new IOException("EMC metadata publication failed");
                }
                return "stored";
            } finally {
            }
        } finally {
            if (stage.exists()) {
                deleteTree(stage);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x003f, code lost:
    
        if (r3.read() != (-1)) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0045, code lost:
    
        if (java.util.Arrays.equals(r1, r9) == false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0049, code lost:
    
        r3.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x004c, code lost:
    
        return r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0048, code lost:
    
        r6 = false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean valid(java.io.File r8, byte[] r9) {
        /*
            java.io.File r0 = new java.io.File
            java.lang.String r1 = "dependency.txt"
            r0.<init>(r8, r1)
            boolean r1 = r8.isDirectory()
            r2 = 0
            if (r1 == 0) goto L59
            boolean r1 = r0.isFile()
            if (r1 == 0) goto L59
            long r3 = r0.length()
            int r1 = r9.length
            long r5 = (long) r1
            int r1 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r1 == 0) goto L1f
            goto L59
        L1f:
            int r1 = r9.length
            byte[] r1 = new byte[r1]
            java.io.FileInputStream r3 = new java.io.FileInputStream     // Catch: java.io.IOException -> L57
            r3.<init>(r0)     // Catch: java.io.IOException -> L57
            r4 = 0
        L28:
            int r5 = r1.length     // Catch: java.lang.Throwable -> L4d
            r6 = 1
            if (r4 >= r5) goto L3a
            int r5 = r1.length     // Catch: java.lang.Throwable -> L4d
            int r5 = r5 - r4
            int r5 = r3.read(r1, r4, r5)     // Catch: java.lang.Throwable -> L4d
            if (r5 >= r6) goto L38
            r3.close()     // Catch: java.io.IOException -> L57
            return r2
        L38:
            int r4 = r4 + r5
            goto L28
        L3a:
            int r5 = r3.read()     // Catch: java.lang.Throwable -> L4d
            r7 = -1
            if (r5 != r7) goto L48
            boolean r5 = java.util.Arrays.equals(r1, r9)     // Catch: java.lang.Throwable -> L4d
            if (r5 == 0) goto L48
            goto L49
        L48:
            r6 = r2
        L49:
            r3.close()     // Catch: java.io.IOException -> L57
            return r6
        L4d:
            r4 = move-exception
            r3.close()     // Catch: java.lang.Throwable -> L52
            goto L56
        L52:
            r5 = move-exception
            r4.addSuppressed(r5)     // Catch: java.io.IOException -> L57
        L56:
            throw r4     // Catch: java.io.IOException -> L57
        L57:
            r3 = move-exception
            return r2
        L59:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ahsim.demulation.DuneHackR82EmcDependencyStore.valid(java.io.File, byte[]):boolean");
    }

    private static void deleteTree(File f) throws IOException {
        if (f.isDirectory()) {
            File[] files = f.listFiles();
            if (files == null) {
                throw new IOException("EMC audit folder inaccessible");
            }
            for (File item : files) {
                deleteTree(item);
            }
        }
        if (!f.delete()) {
            throw new IOException("EMC audit cache cleanup failed");
        }
    }
}
