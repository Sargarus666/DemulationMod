package com.ahsim.demulation;

import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.Locale;

/* loaded from: classes2.dex */
public final class RazorF40PrecallEvidence533 {
    private static final int BLOCKED = 15;
    public static final String ENTRY = "razor_f40_precall_status533.json";

    private RazorF40PrecallEvidence533() {
    }

    public static void verify(int[] s, int[] e) throws IOException {
        if (s == null || s.length != 48 || e == null || e.length != 32 || s[0] != 533 || s[1] != 1 || e[0] != 530 || e[1] != 1 || s[7] != 40 || e[7] != 40 || s[2] != e[2] || s[3] != e[4] || s[4] != e[3] || s[5] != e[5] || s[6] != e[6] || s[8] != e[8] || s[9] != e[9] || s[10] != e[10] || s[11] != e[11] || s[12] != e[12] || s[13] != e[13] || s[14] != e[14] || s[15] != e[15] || s[16] != e[16] || s[40] != 15 || s[41] != 1 || s[42] != 1 || s[43] != 1 || s[44] != 0 || s[45] != 0 || s[46] != 0 || s[47] != 2 || s[9] < 0 || s[9] > 15 || s[10] < 0 || s[10] > 17 || ((s[13] == 0 && s[14] == 0) || (s[15] == 0 && s[16] == 0))) {
            throw new IOException("Razor 533 F40 precall event untrusted");
        }
        for (int i = 0; i < 5; i++) {
            if (s[i + 20] != e[i + 17] || s[i + 20] < 0 || s[i + 20] > 65535) {
                throw new IOException("Razor 533 EMC variable mismatch");
            }
        }
        for (int i2 = 0; i2 < 15; i2++) {
            if (s[i2 + 25] < 0 || s[i2 + 25] > 65535 || (i2 < 4 && s[i2 + 25] != e[i2 + 22])) {
                throw new IOException("Razor 533 EMC stack mismatch");
            }
        }
        int i3 = s[17];
        if (i3 < 0 || s[17] > 65535 || s[18] < 0 || s[18] > 65535 || s[19] < 0 || s[19] > 65535) {
            throw new IOException("Razor 533 opcode/return/delay invalid");
        }
    }

    public static byte[] json(String sha, int house, int mission, int[] s) throws IOException {
        if (sha == null || !sha.matches("[0-9a-fA-F]{64}") || house < 0 || house >= 5 || mission < 1 || mission > 9) {
            throw new IOException("Razor 533 source identity invalid");
        }
        if (s != null && (s.length != 48 || s[0] != 533 || s[1] != 1 || s[7] != 40 || s[40] != 15 || s[41] != 1 || s[42] != 1 || s[43] != 1 || s[44] != 0 || s[45] != 0 || s[46] != 0 || s[47] != 2)) {
            throw new IOException("Razor 533 snapshot invalid");
        }
        StringBuilder b = new StringBuilder(1100);
        b.append("{\"schema\":\"demulation.razor.533.f40-precall.v1\",\"source_rom_sha256\":\"").append(sha.toLowerCase(Locale.ROOT)).append("\",\"house\":").append(house).append(",\"mission\":").append(mission).append(",\"status\":\"").append(s == null ? "NOT_CAPTURED" : "EMC_PRECALL_CAPTURED").append("\",\"proof_tier\":\"ANDROID_ATTACHED_EMC_ONLY\"").append(",\"genesis_cpu_authenticated\":false,\"genesis_unit_slot_known\":false").append(",\"callback_executed\":false,\"gameplay_ticks\":0,\"gameplay_authorized\":false");
        if (s != null) {
            b.append(",\"callback_id\":40,\"owner_verified\":true").append(",\"session_event_id\":\"").append(RazorF40PrecallEvidence533$$ExternalSyntheticBackport1.m11m(s[14])).append(':').append(RazorF40PrecallEvidence533$$ExternalSyntheticBackport1.m11m(s[13])).append("\"").append(",\"emc_ordinal\":").append(s[2]).append(",\"owner\":").append(s[3]).append(",\"type\":").append(s[4]).append(",\"script_entry\":").append(s[5]).append(",\"emc_pc\":").append(s[6]).append(",\"steps\":").append(s[8]).append(",\"stack_pointer\":").append(s[9]).append(",\"frame_pointer\":").append(s[10]).append(",\"opcode_raw\":").append(s[17]).append(",\"emc_return_word\":").append(s[18]).append(",\"emc_delay\":").append(s[19]).append(",\"bank_fingerprint_u32\":").append(RazorF40PrecallEvidence533$$ExternalSyntheticBackport1.m11m(s[11])).append(",\"world_fingerprint_u32\":").append(RazorF40PrecallEvidence533$$ExternalSyntheticBackport1.m11m(s[12])).append(",\"blocked_bits\":").append(s[40]);
            appendArray(b, "variables", s, 20, 5);
            appendArray(b, "full_emc_stack", s, 25, 15);
        }
        return b.append('}').toString().getBytes(StandardCharsets.UTF_8);
    }

    private static void appendArray(StringBuilder b, String key, int[] s, int start, int n) {
        b.append(",\"").append(key).append("\":[");
        for (int i = 0; i < n; i++) {
            if (i > 0) {
                b.append(',');
            }
            b.append(s[start + i]);
        }
        b.append(']');
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x0168, code lost:
    
        r22 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x0187, code lost:
    
        if (r9.contains("\"source_rom_sha256\":\"" + r14 + "\"") == false) goto L96;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x01a6, code lost:
    
        if (r9.contains("\"house\":" + r27 + ",") == false) goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x01c7, code lost:
    
        if (r9.contains("\"mission\":" + r28 + ",") == false) goto L98;
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x01cf, code lost:
    
        if (r9.contains("\"capture_kind\":\"FULL_PROBE\"") == false) goto L98;
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x01d7, code lost:
    
        if (r9.contains("\"genesis_cpu_authenticated\":false") == false) goto L98;
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x01df, code lost:
    
        if (r9.contains("\"gameplay_ticks\":0") == false) goto L98;
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x01e1, code lost:
    
        if (r29 == null) goto L92;
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x01e9, code lost:
    
        if (r9.contains("\"status531_verified_owner_claim\":true") == false) goto L98;
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x01eb, code lost:
    
        r2 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x0204, code lost:
    
        r13 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x0203, code lost:
    
        r2 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:125:0x027c, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x01f2, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x01fb, code lost:
    
        r22 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x0206, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:157:0x0266, code lost:
    
        r21 = r8;
        r20 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:166:0x028f, code lost:
    
        r16 = r7;
        r21 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:168:0x0299, code lost:
    
        if (r13 == false) goto L140;
     */
    /* JADX WARN: Code restructure failed: missing block: B:169:0x029b, code lost:
    
        r1.putNextEntry(new java.util.zip.ZipEntry(com.ahsim.demulation.RazorF40PrecallEvidence533.ENTRY));
        r1.write(r3);
        r1.closeEntry();
     */
    /* JADX WARN: Code restructure failed: missing block: B:170:0x02a9, code lost:
    
        r1.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:171:0x02ac, code lost:
    
        r21.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:172:0x02b3, code lost:
    
        if (r5.exists() == false) goto L130;
     */
    /* JADX WARN: Code restructure failed: missing block: B:174:0x02b9, code lost:
    
        if (r5.delete() == false) goto L128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:177:0x02c3, code lost:
    
        throw new java.io.IOException("Cannot update Razor 533");
     */
    /* JADX WARN: Code restructure failed: missing block: B:179:0x02c8, code lost:
    
        if (r6.renameTo(r5) == false) goto L136;
     */
    /* JADX WARN: Code restructure failed: missing block: B:181:0x02cb, code lost:
    
        if (1 != 0) goto L135;
     */
    /* JADX WARN: Code restructure failed: missing block: B:182:0x02cd, code lost:
    
        r6.delete();
     */
    /* JADX WARN: Code restructure failed: missing block: B:183:0x02d0, code lost:
    
        return r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:185:0x02d8, code lost:
    
        throw new java.io.IOException("Cannot commit Razor 533");
     */
    /* JADX WARN: Code restructure failed: missing block: B:187:0x02e3, code lost:
    
        throw new java.io.IOException("Razor 533 must follow matching 532 full probe");
     */
    /* JADX WARN: Code restructure failed: missing block: B:188:0x02d9, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:189:0x02da, code lost:
    
        r2 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x0153, code lost:
    
        r19 = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x0158, code lost:
    
        if (r4 == null) goto L103;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x020d, code lost:
    
        r22 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x015a, code lost:
    
        r9 = r4.toString("UTF-8");
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x0166, code lost:
    
        if (r9.contains("\"schema\":\"demulation.razor.532.android-runtime-evidence.v1\"") == false) goto L97;
     */
    /* JADX WARN: Removed duplicated region for block: B:207:0x0320  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.io.File append(java.io.File r24, java.io.File r25, java.lang.String r26, int r27, int r28, int[] r29) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 834
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ahsim.demulation.RazorF40PrecallEvidence533.append(java.io.File, java.io.File, java.lang.String, int, int, int[]):java.io.File");
    }
}
