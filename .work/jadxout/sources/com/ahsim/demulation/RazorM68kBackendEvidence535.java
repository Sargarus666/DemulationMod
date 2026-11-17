package com.ahsim.demulation;

import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.Locale;

/* loaded from: classes2.dex */
public final class RazorM68kBackendEvidence535 {
    public static final String ENTRY = "razor_m68k_backend_status535.json";

    private RazorM68kBackendEvidence535() {
    }

    public static void verify(int[] status, int[] gate) throws IOException {
        if (status == null || status.length != 12 || gate == null || gate.length != 16 || status[0] != 535 || status[1] != 10 || status[2] != 15 || gate[0] != 534 || gate[1] != 1 || gate[2] != 15 || status[3] != gate[3] || status[4] != gate[4] || status[5] != gate[5] || status[6] != gate[6] || status[7] != gate[7] || status[8] != 0 || status[9] != 0 || status[10] != 0 || status[11] != 0) {
            throw new IOException("Razor 535 backend status not same event or unsafe");
        }
    }

    public static byte[] json(String sha, int house, int mission, int[] status, int[] gate) throws IOException {
        if (sha != null && sha.matches("[0-9a-fA-F]{64}") && house >= 0 && house < 5) {
            if (mission >= 1 && mission <= 9) {
                if (status != null) {
                    verify(status, gate);
                }
                String b = "{\"schema\":\"demulation.razor.535.partial-68k-backend.v1\",\"source_rom_sha256\":\"" + sha.toLowerCase(Locale.ROOT) + "\",\"house\":" + house + ",\"mission\":" + mission + ",\"status\":\"" + (status == null ? "NO_SAME_EVENT_BACKEND_STATUS" : "PARTIAL_BACKEND_LINKED_F40_BLOCKED") + "\",\"opcode_families\":" + (status == null ? 0 : status[1]) + ",\"rom_fetched_replay_supported\":" + (status != null) + ",\"genesis_rom_mapped_to_session\":false,\"genesis_ram_mapped_to_session\":false,\"genesis_cpu_authenticated\":false,\"genesis_unit_slot_proven\":false,\"native_callback_executed\":false,\"gameplay_ticks\":0,\"gameplay_authorized\":false,\"missing_live_capability_bits\":15" + (status == null ? "" : ",\"emc_event_id\":\"" + RazorF40PrecallEvidence533$$ExternalSyntheticBackport1.m11m(status[5]) + ":" + RazorF40PrecallEvidence533$$ExternalSyntheticBackport1.m11m(status[4]) + "\",\"emc_ordinal\":" + status[3]) + "}";
                return b.getBytes(StandardCharsets.UTF_8);
            }
        }
        throw new IOException("Razor 535 invalid source ROM or mission");
    }

    /* JADX WARN: Code restructure failed: missing block: B:101:0x0189, code lost:
    
        if (r9.contains("\"source_rom_sha256\":\"" + r28.toLowerCase(java.util.Locale.ROOT) + "\"") == false) goto L99;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x01a8, code lost:
    
        if (r9.contains("\"house\":" + r29 + r0) == false) goto L96;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x01c9, code lost:
    
        if (r9.contains("\"mission\":" + r30 + r0) == false) goto L95;
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x01d1, code lost:
    
        if (r9.contains("\"gameplay_ticks\":0") == false) goto L94;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x01d3, code lost:
    
        if (r31 == null) goto L92;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x01db, code lost:
    
        if (r9.contains("\"status\":\"HOST_COPY_ISOLATED_F40_BLOCKED\"") == false) goto L91;
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x01dd, code lost:
    
        r25 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x0211, code lost:
    
        if (r9.contains("\"emc_event_id\":\"" + com.ahsim.demulation.RazorF40PrecallEvidence533$$ExternalSyntheticBackport1.m11m(r31[5]) + ":" + com.ahsim.demulation.RazorF40PrecallEvidence533$$ExternalSyntheticBackport1.m11m(r31[4]) + "\"") == false) goto L103;
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x0219, code lost:
    
        r0 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x0244, code lost:
    
        r15 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x0243, code lost:
    
        r0 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x0214, code lost:
    
        r25 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:125:0x0217, code lost:
    
        r25 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x021b, code lost:
    
        r25 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x021e, code lost:
    
        r25 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x0318, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x0221, code lost:
    
        r25 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x0228, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x022a, code lost:
    
        r25 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:136:0x0233, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:139:0x0235, code lost:
    
        r25 = r0;
        r22 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:141:0x0246, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x014d, code lost:
    
        r19 = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x0152, code lost:
    
        if (r2 == null) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x024f, code lost:
    
        r25 = r0;
        r22 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x0154, code lost:
    
        r9 = r2.toString("UTF-8");
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x0160, code lost:
    
        if (r9.contains("\"schema\":\"demulation.razor.534.f40-sandbox-gate.v1\"") == false) goto L102;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x0162, code lost:
    
        r22 = r1;
     */
    /* JADX WARN: Removed duplicated region for block: B:210:0x035d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.io.File append(java.io.File r26, java.io.File r27, java.lang.String r28, int r29, int r30, int[] r31, int[] r32) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 895
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ahsim.demulation.RazorM68kBackendEvidence535.append(java.io.File, java.io.File, java.lang.String, int, int, int[], int[]):java.io.File");
    }
}
