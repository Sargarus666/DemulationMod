package com.ahsim.demulation;

import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.Locale;

/* loaded from: classes2.dex */
public final class RazorGenesisBootEvidence541 {
    public static final String ENTRY = "razor_genesis_boot541.json";

    private RazorGenesisBootEvidence541() {
    }

    public static void verify(int[] x, int[] gate, int variant) throws IOException {
        if (x != null && x.length == 21 && gate != null && gate.length == 16 && ((variant == 1 || variant == 2) && gate[0] == 534 && gate[1] == 1 && gate[2] == 15 && x[0] == 541)) {
            if (x[1] == (variant == 1 ? 3145728 : 4194304) && x[2] == 1128 && x[3] == -6 && x[4] == 9984 && x[5] == 19129 && x[6] == 10551304 && x[7] == -3 && x[8] == 1128 && x[9] == 1 && x[10] == 0 && x[11] == 4 && x[12] == 0 && x[13] == 0 && x[14] == 0 && x[15] == 1 && x[16] == 15 && x[17] == 1 && x[18] == gate[3] && x[19] == gate[4] && x[20] == gate[5]) {
                return;
            }
        }
        throw new IOException("Razor 541 bootstrap ROM/EMC linkage unsafe");
    }

    public static byte[] json(String sha, int house, int mission, int[] x, int[] gate, int variant) throws IOException {
        if (sha != null && sha.matches("[0-9a-fA-F]{64}") && house >= 0 && house < 5) {
            if (mission >= 1 && mission <= 9 && (variant == 1 || variant == 2)) {
                if (x != null) {
                    verify(x, gate, variant);
                }
                StringBuilder body = new StringBuilder();
                body.append("{\"schema\":\"demulation.razor.541.genesis-bootstrap.v1\",").append("\"source_rom_sha256\":\"").append(sha.toLowerCase(Locale.ROOT)).append("\",\"house\":").append(house).append(",\"mission\":").append(mission).append(",\"rom_bytes\":").append(variant == 1 ? 3145728 : 4194304).append(",\"status\":\"").append(x == null ? "NO_SAME_EVENT_BOOT_PROBE" : "MMIO_REQUIRED_A10008").append("\",\"reset_vector_pc\":\"00000468\",\"reset_vector_sp\":\"FFFFFFFA\"").append(",\"instruction\":\"TST.L ($00A10008)\"").append(",\"opcode\":\"4AB9\",\"stop_address\":\"00A10008\"").append(",\"stop_code\":").append(x != null ? -3 : 0).append(",\"attempted_instructions\":").append(x == null ? 0 : 1).append(",\"completed_instructions\":0").append(",\"original_rom_modified\":false").append(",\"private_genesis_ram_only\":true").append(",\"controller_io_implemented\":false").append(",\"genesis_live_cpu_authenticated\":false").append(",\"native_f40_executed\":false").append(",\"gameplay_ticks\":0,\"gameplay_authorized\":false").append(",\"missing_live_capability_bits\":15");
                if (x != null) {
                    body.append(",\"emc_event_id\":\"").append(RazorF40PrecallEvidence533$$ExternalSyntheticBackport1.m11m(x[20])).append(':').append(RazorF40PrecallEvidence533$$ExternalSyntheticBackport1.m11m(x[19])).append('\"').append(",\"emc_ordinal\":").append(x[18]);
                }
                return body.append('}').toString().getBytes(StandardCharsets.UTF_8);
            }
        }
        throw new IOException("Razor 541 invalid source ROM or mission");
    }

    /* JADX WARN: Code restructure failed: missing block: B:102:0x015f, code lost:
    
        r10 = r2.toString("UTF-8");
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x016b, code lost:
    
        if (r10.contains("\"schema\":\"demulation.razor.534.f40-sandbox-gate.v1\"") == false) goto L110;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x0190, code lost:
    
        if (r10.contains("\"source_rom_sha256\":\"" + r27.toLowerCase(java.util.Locale.ROOT) + "\"") == false) goto L107;
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x01af, code lost:
    
        if (r10.contains("\"house\":" + r28 + r0) == false) goto L104;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x01b1, code lost:
    
        r23 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x01d0, code lost:
    
        if (r10.contains("\"mission\":" + r29 + r0) == false) goto L103;
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x01d8, code lost:
    
        if (r10.contains("\"gameplay_ticks\":0") == false) goto L102;
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x01da, code lost:
    
        if (r30 == null) goto L100;
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x01e2, code lost:
    
        if (r10.contains("\"status\":\"HOST_COPY_ISOLATED_F40_BLOCKED\"") == false) goto L99;
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x01e4, code lost:
    
        r24 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:125:0x021b, code lost:
    
        if (r10.contains("\"emc_event_id\":\"" + com.ahsim.demulation.RazorF40PrecallEvidence533$$ExternalSyntheticBackport1.m11m(r30[20]) + ":" + com.ahsim.demulation.RazorF40PrecallEvidence533$$ExternalSyntheticBackport1.m11m(r30[19]) + "\"") == false) goto L111;
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x0238, code lost:
    
        if (r10.contains("\"emc_ordinal\":" + r30[18]) == false) goto L111;
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x0240, code lost:
    
        r0 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:130:0x0267, code lost:
    
        r13 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x0266, code lost:
    
        r0 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x023b, code lost:
    
        r24 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:133:0x023e, code lost:
    
        r24 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x0242, code lost:
    
        r24 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:135:0x0245, code lost:
    
        r24 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x0291, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:138:0x0292, code lost:
    
        r1 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:139:0x0248, code lost:
    
        r24 = r0;
        r23 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:141:0x024f, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:144:0x0251, code lost:
    
        r24 = r0;
        r23 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:146:0x025a, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:149:0x025c, code lost:
    
        r24 = r0;
        r23 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:151:0x0269, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:180:0x02d6, code lost:
    
        r19 = r8;
        r18 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:186:0x02ed, code lost:
    
        r19 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:188:0x02f5, code lost:
    
        if (r13 == false) goto L157;
     */
    /* JADX WARN: Code restructure failed: missing block: B:189:0x02f7, code lost:
    
        r9.putNextEntry(new java.util.zip.ZipEntry(com.ahsim.demulation.RazorGenesisBootEvidence541.ENTRY));
        r9.write(r4);
        r9.closeEntry();
     */
    /* JADX WARN: Code restructure failed: missing block: B:190:0x0305, code lost:
    
        r9.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:191:0x0308, code lost:
    
        r15.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:192:0x030f, code lost:
    
        if (r6.exists() == false) goto L147;
     */
    /* JADX WARN: Code restructure failed: missing block: B:194:0x0315, code lost:
    
        if (r6.delete() == false) goto L145;
     */
    /* JADX WARN: Code restructure failed: missing block: B:197:0x031f, code lost:
    
        throw new java.io.IOException("Razor 541 overwrite refused");
     */
    /* JADX WARN: Code restructure failed: missing block: B:199:0x0324, code lost:
    
        if (r7.renameTo(r6) == false) goto L153;
     */
    /* JADX WARN: Code restructure failed: missing block: B:201:0x0327, code lost:
    
        if (1 != 0) goto L152;
     */
    /* JADX WARN: Code restructure failed: missing block: B:202:0x0329, code lost:
    
        r7.delete();
     */
    /* JADX WARN: Code restructure failed: missing block: B:203:0x032c, code lost:
    
        return r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:205:0x0334, code lost:
    
        throw new java.io.IOException("Razor 541 rename failed");
     */
    /* JADX WARN: Code restructure failed: missing block: B:207:0x033f, code lost:
    
        throw new java.io.IOException("Razor 541 missing/mismatched 534 gate");
     */
    /* JADX WARN: Code restructure failed: missing block: B:208:0x0335, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x0156, code lost:
    
        r21 = r11;
        r18 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x015d, code lost:
    
        if (r2 == null) goto L117;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x0271, code lost:
    
        r24 = r0;
        r23 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x027b, code lost:
    
        r9.closeEntry();
        r15.closeEntry();
     */
    /* JADX WARN: Removed duplicated region for block: B:226:0x0370  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.io.File append(java.io.File r25, java.io.File r26, java.lang.String r27, int r28, int r29, int[] r30, int[] r31, int r32) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 908
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ahsim.demulation.RazorGenesisBootEvidence541.append(java.io.File, java.io.File, java.lang.String, int, int, int[], int[], int):java.io.File");
    }
}
