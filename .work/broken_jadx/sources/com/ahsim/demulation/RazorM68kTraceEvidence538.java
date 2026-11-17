package com.ahsim.demulation;

import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.Locale;

/* loaded from: classes2.dex */
public final class RazorM68kTraceEvidence538 {
    public static final String ENTRY = "razor_m68k_trace538.json";

    private RazorM68kTraceEvidence538() {
    }

    public static void verify(int[] trace, int[] smoke536) throws IOException {
        if (trace == null || trace.length != 20 || smoke536 == null || smoke536.length != 20 || smoke536[0] != 536 || smoke536[1] != 2 || trace[0] != 538 || trace[1] != 8 || trace[2] != 3145728 || trace[8] != 53894 || trace[9] != 107466 || trace[10] != -96 || trace[11] != -68 || trace[12] != 16717722 || trace[13] != 16717700 || trace[14] != -65534 || trace[15] != 8196 || trace[16] != smoke536[12] || trace[16] == 0 || trace[17] == 0 || trace[17] != trace[18] || trace[19] != 1 || smoke536[17] != 0 || smoke536[18] != 0 || smoke536[19] != 0) {
            throw new IOException("Razor 538 incorrect/private trace or unsafe CPU claim");
        }
        for (int i = 3; i <= 7; i++) {
            if (trace[i] != smoke536[i]) {
                throw new IOException("Razor 538 other EMC event/ROM session");
            }
        }
    }

    public static byte[] json(String sha, int house, int mission, int[] trace, int[] smoke536) throws IOException {
        if (sha != null && sha.matches("[0-9a-fA-F]{64}") && house >= 0 && house < 5) {
            if (mission >= 1 && mission <= 9) {
                if (trace != null) {
                    verify(trace, smoke536);
                }
                String str = "";
                StringBuilder append = new StringBuilder().append("{\"schema\":\"demulation.razor.538.contiguous-private-trace.v1\",\"source_rom_sha256\":\"").append(sha.toLowerCase(Locale.ROOT)).append("\",\"house\":").append(house).append(",\"mission\":").append(mission).append(",\"status\":\"").append(trace != null ? "EIGHT_ROM_OPCODES_PRIVATE_TRACE" : "NO_SAME_EVENT_TRACE").append("\",\"verified_instruction_steps\":").append(trace != null ? trace[1] : 0).append(",\"start_pc\":\"").append(trace != null ? Integer.toHexString(trace[8]) : "").append("\",\"end_pc\":\"").append(trace != null ? Integer.toHexString(trace[9]) : "").append("\",\"stack_final\":\"").append(trace != null ? Integer.toHexString(trace[11]) : "").append("\",\"a2_final\":\"").append(trace != null ? Integer.toHexString(trace[13]) : "").append("\",\"private_ram_unchanged\":").append(trace != null).append(",\"historical_synthetic_seed\":true,\"genesis_live_cpu_authenticated\":false,\"f40_callback_executed\":false,\"gameplay_ticks\":0,\"gameplay_authorized\":false,");
                if (trace != null) {
                    str = "\"emc_event_id\":\"" + RazorF40PrecallEvidence533$$ExternalSyntheticBackport1.m11m(trace[5]) + ":" + RazorF40PrecallEvidence533$$ExternalSyntheticBackport1.m11m(trace[4]) + "\",\"emc_ordinal\":" + trace[3] + ",";
                }
                String body = append.append(str).append("\"only_android_diagnostic\":true}").toString();
                return body.getBytes(StandardCharsets.UTF_8);
            }
        }
        throw new IOException("Razor 538 invalid ROM/mission");
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x01ab, code lost:
    
        if (r11.contains("\"house\":" + r29 + r0) == false) goto L97;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x01cc, code lost:
    
        if (r11.contains("\"mission\":" + r30 + r0) == false) goto L96;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x01d4, code lost:
    
        if (r11.contains("\"gameplay_ticks\":0") == false) goto L95;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x01d6, code lost:
    
        if (r31 == null) goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x01de, code lost:
    
        if (r11.contains("\"status\":\"ROM_FETCHED_TWO_OPCODES_PRIVATE_ONLY\"") == false) goto L92;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x01e0, code lost:
    
        r25 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x0214, code lost:
    
        if (r11.contains("\"emc_event_id\":\"" + com.ahsim.demulation.RazorF40PrecallEvidence533$$ExternalSyntheticBackport1.m11m(r31[5]) + ":" + com.ahsim.demulation.RazorF40PrecallEvidence533$$ExternalSyntheticBackport1.m11m(r31[4]) + "\"") == false) goto L104;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x0230, code lost:
    
        if (r11.contains("\"emc_ordinal\":" + r31[3]) == false) goto L104;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x0238, code lost:
    
        r0 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x0263, code lost:
    
        r15 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x0262, code lost:
    
        r0 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x0233, code lost:
    
        r25 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x0236, code lost:
    
        r25 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x023a, code lost:
    
        r25 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x023d, code lost:
    
        r25 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x033d, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:125:0x0240, code lost:
    
        r25 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x0247, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:130:0x0249, code lost:
    
        r25 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x0252, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:135:0x0254, code lost:
    
        r25 = r0;
        r22 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x0265, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x014f, code lost:
    
        r7 = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x0155, code lost:
    
        if (r2 == null) goto L110;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x026e, code lost:
    
        r25 = r0;
        r22 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x0157, code lost:
    
        r11 = r2.toString("UTF-8");
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x0163, code lost:
    
        if (r11.contains("\"schema\":\"demulation.razor.536.rom-backed-private-smoke.v1\"") == false) goto L103;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x0165, code lost:
    
        r22 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x018c, code lost:
    
        if (r11.contains("\"source_rom_sha256\":\"" + r28.toLowerCase(java.util.Locale.ROOT) + "\"") == false) goto L100;
     */
    /* JADX WARN: Removed duplicated region for block: B:207:0x0384  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.io.File append(java.io.File r26, java.io.File r27, java.lang.String r28, int r29, int r30, int[] r31, int[] r32) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 934
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ahsim.demulation.RazorM68kTraceEvidence538.append(java.io.File, java.io.File, java.lang.String, int, int, int[], int[]):java.io.File");
    }
}
