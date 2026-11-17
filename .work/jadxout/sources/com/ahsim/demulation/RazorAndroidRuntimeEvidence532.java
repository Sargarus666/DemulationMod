package com.ahsim.demulation;

import java.io.IOException;
import java.util.Locale;

/* loaded from: classes2.dex */
public final class RazorAndroidRuntimeEvidence532 {
    public static final String ENTRY = "razor_android_runtime_status532.json";

    private RazorAndroidRuntimeEvidence532() {
    }

    private static boolean validOutcome(String s) {
        return "OBSERVED".equals(s) || "FAILED".equals(s) || "SKIPPED".equals(s) || "NOT_RUN".equals(s) || "IN_PROGRESS".equals(s) || "EXPORT_FAILED".equals(s);
    }

    private static String status(String sha, int house, int mission, String kind, String outcome, boolean has531, boolean verified531) throws IOException {
        if (sha == null || !sha.matches("[0-9a-fA-F]{64}") || house < 0 || house > 4 || mission < 1 || mission > 9 || ((!"FULL_PROBE".equals(kind) && !"PREFLIGHT_ONLY".equals(kind)) || !validOutcome(outcome) || ((verified531 && !has531) || ("PREFLIGHT_ONLY".equals(kind) && has531)))) {
            throw new IOException("Invalid Razor 532 source identity or evidence tier");
        }
        return "{\"schema\":\"demulation.razor.532.android-runtime-evidence.v1\",\"source_rom_sha256\":\"" + sha.toLowerCase(Locale.ROOT) + "\",\"house\":" + house + ",\"mission\":" + mission + ",\"capture_kind\":\"" + kind + "\",\"observation_outcome\":\"" + outcome + "\",\"status531_present\":" + has531 + ",\"status531_verified_owner_claim\":" + verified531 + ",\"genesis_cpu_authenticated\":false,\"native_callback_executed\":false,\"gameplay_ticks\":0,\"gameplay_authorized\":false}";
    }

    /* JADX WARN: Code restructure failed: missing block: B:101:0x01b4, code lost:
    
        if (r10.contains("\"house\":" + r29 + ",") == false) goto L89;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x01d3, code lost:
    
        if (r10.contains("\"mission\":" + r30 + ",") == false) goto L92;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x01db, code lost:
    
        if (r10.contains("\"outcome\":\"OBSERVED\"") == false) goto L92;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x01e3, code lost:
    
        if (r10.contains("\"android_world_owner_verified\":true") == false) goto L92;
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x01eb, code lost:
    
        if (r10.contains("\"genesis_cpu_authenticated\":false") == false) goto L92;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x01f3, code lost:
    
        if (r10.contains("\"native_callback_executed\":false") == false) goto L92;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x01fb, code lost:
    
        if (r10.contains("\"gameplay_ticks\":0") == false) goto L92;
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x01fd, code lost:
    
        r2 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x022f, code lost:
    
        if ("RAZOR_PREFLIGHT_406H.json".equals(r5) == false) goto L100;
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x0231, code lost:
    
        r17 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x0233, code lost:
    
        r8.closeEntry();
        r8.closeEntry();
     */
    /* JADX WARN: Code restructure failed: missing block: B:125:0x0245, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x0246, code lost:
    
        r10 = r8;
        r2 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x0213, code lost:
    
        r2 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x01ff, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:130:0x0200, code lost:
    
        r2 = r0;
        r10 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:135:0x0215, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:136:0x0216, code lost:
    
        r2 = r0;
        r10 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x0221, code lost:
    
        r9 = r22;
        r2 = r23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:163:0x0295, code lost:
    
        r22 = r3;
        r23 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:167:0x02a1, code lost:
    
        if (r8.isEmpty() != false) goto L152;
     */
    /* JADX WARN: Code restructure failed: missing block: B:169:0x02a9, code lost:
    
        if ("PREFLIGHT_ONLY".equals(r31) == false) goto L124;
     */
    /* JADX WARN: Code restructure failed: missing block: B:170:0x02ab, code lost:
    
        if (r17 == false) goto L123;
     */
    /* JADX WARN: Code restructure failed: missing block: B:171:0x02ad, code lost:
    
        if (r22 != false) goto L123;
     */
    /* JADX WARN: Code restructure failed: missing block: B:175:0x033e, code lost:
    
        throw new java.io.IOException("Razor 532 wrong ZIP tier");
     */
    /* JADX WARN: Code restructure failed: missing block: B:177:0x02bd, code lost:
    
        if ("FULL_PROBE".equals(r31) == false) goto L129;
     */
    /* JADX WARN: Code restructure failed: missing block: B:178:0x02bf, code lost:
    
        if (r17 != false) goto L128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:180:0x02c9, code lost:
    
        r10 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:183:0x02db, code lost:
    
        r0 = status(r28, r29, r30, r31, r32, r22, r23).getBytes(java.nio.charset.StandardCharsets.UTF_8);
        r8.putNextEntry(new java.util.zip.ZipEntry(com.ahsim.demulation.RazorAndroidRuntimeEvidence532.ENTRY));
        r8.write(r0);
        r8.closeEntry();
     */
    /* JADX WARN: Code restructure failed: missing block: B:185:0x02ef, code lost:
    
        r8.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:186:0x02f2, code lost:
    
        r10.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:187:0x02f9, code lost:
    
        if (r3.exists() == false) goto L140;
     */
    /* JADX WARN: Code restructure failed: missing block: B:189:0x02ff, code lost:
    
        if (r3.delete() == false) goto L138;
     */
    /* JADX WARN: Code restructure failed: missing block: B:192:0x0309, code lost:
    
        throw new java.io.IOException("Cannot replace previous 532 diagnostic");
     */
    /* JADX WARN: Code restructure failed: missing block: B:194:0x030e, code lost:
    
        if (r12.renameTo(r3) == false) goto L146;
     */
    /* JADX WARN: Code restructure failed: missing block: B:196:0x0311, code lost:
    
        if (1 != 0) goto L145;
     */
    /* JADX WARN: Code restructure failed: missing block: B:197:0x0313, code lost:
    
        r12.delete();
     */
    /* JADX WARN: Code restructure failed: missing block: B:198:0x0316, code lost:
    
        return r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:200:0x031e, code lost:
    
        throw new java.io.IOException("Cannot commit Razor 532 ZIP");
     */
    /* JADX WARN: Code restructure failed: missing block: B:202:0x031f, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:203:0x0320, code lost:
    
        r1 = r0;
        r10 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:205:0x0328, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:206:0x0329, code lost:
    
        r2 = r0;
        r10 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:209:0x033f, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:210:0x0340, code lost:
    
        r2 = r0;
        r10 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:211:0x0347, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:212:0x0348, code lost:
    
        r10 = r8;
        r2 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x0160, code lost:
    
        r25 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x0165, code lost:
    
        if (r2 == null) goto L96;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x0167, code lost:
    
        r9 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x0168, code lost:
    
        r10 = r2.toString("UTF-8");
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x0174, code lost:
    
        if (r10.contains("\"schema\":\"demulation.razor.531.android-emc-status.v1\"") == false) goto L91;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x0195, code lost:
    
        if (r10.contains("\"source_rom_sha256\":\"" + r8 + "\"") == false) goto L90;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v2, types: [java.util.zip.ZipInputStream] */
    /* JADX WARN: Type inference failed for: r10v29 */
    /* JADX WARN: Type inference failed for: r10v30 */
    /* JADX WARN: Type inference failed for: r10v9, types: [java.util.zip.ZipInputStream] */
    /* JADX WARN: Type inference failed for: r8v4, types: [java.util.zip.ZipInputStream] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.io.File append(java.io.File r26, java.io.File r27, java.lang.String r28, int r29, int r30, java.lang.String r31, java.lang.String r32) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 919
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ahsim.demulation.RazorAndroidRuntimeEvidence532.append(java.io.File, java.io.File, java.lang.String, int, int, java.lang.String, java.lang.String):java.io.File");
    }
}
