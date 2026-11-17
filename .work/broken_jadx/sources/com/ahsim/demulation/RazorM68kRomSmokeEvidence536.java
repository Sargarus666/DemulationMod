package com.ahsim.demulation;

import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.Locale;

/* loaded from: classes2.dex */
public final class RazorM68kRomSmokeEvidence536 {
    public static final String ENTRY = "razor_m68k_rom_smoke536.json";

    private RazorM68kRomSmokeEvidence536() {
    }

    public static void verify(int[] smoke, int[] backend) throws IOException {
        if (smoke == null || smoke.length != 20 || backend == null || backend.length != 12 || backend[0] != 535 || backend[2] != 15 || smoke[0] != 536 || smoke[1] != 2 || smoke[2] != 3145728 || smoke[8] != 107330 || smoke[9] != 106544 || smoke[10] != 8192 || smoke[11] != 16713360 || smoke[12] == 0 || smoke[13] == 0 || smoke[14] == 0 || smoke[13] == smoke[14] || smoke[15] != 1 || smoke[16] != 1 || smoke[17] != 0 || smoke[18] != 0 || smoke[19] != 0) {
            throw new IOException("Razor 536 unsafe/missing private ROM smoke");
        }
        for (int i = 3; i <= 7; i++) {
            if (smoke[i] != backend[i]) {
                throw new IOException("Razor 536 mismatched EMC event or session");
            }
        }
    }

    public static byte[] json(String sha, int house, int mission, int[] smoke, int[] backend) throws IOException {
        String str;
        if (sha == null || !sha.matches("[0-9a-fA-F]{64}") || house < 0 || house >= 5 || mission < 1 || mission > 9) {
            throw new IOException("Razor 536 invalid source");
        }
        if (smoke != null) {
            verify(smoke, backend);
        }
        StringBuilder append = new StringBuilder().append("{\"schema\":\"demulation.razor.536.rom-backed-private-smoke.v1\",\"source_rom_sha256\":\"").append(sha.toLowerCase(Locale.ROOT)).append("\",\"house\":").append(house).append(",\"mission\":").append(mission).append(",\"status\":\"").append(smoke == null ? "NO_SAME_EVENT_SMOKE" : "ROM_FETCHED_TWO_OPCODES_PRIVATE_ONLY").append("\",\"original_rom_bytes_attached_to_probe\":").append(smoke != null).append(",\"synthetic_cpu_state\":true,\"private_genesis_ram\":").append(smoke != null).append(",\"verified_instruction_steps\":").append(smoke != null ? smoke[1] : 0).append(",\"rom_fnv32_diagnostic\":\"").append(smoke == null ? "" : Long.toString(smoke[12] & 4294967295L, 16)).append("\",\"branch_pc\":\"").append(smoke == null ? "" : Integer.toHexString(smoke[8])).append("\",\"private_ram_write_pc\":\"").append(smoke == null ? "" : Integer.toHexString(smoke[9])).append("\",\"genesis_live_cpu_authenticated\":false,\"genesis_live_ram_available\":false,\"f40_callback_executed\":false,\"gameplay_ticks\":0,\"gameplay_authorized\":false,");
        if (smoke == null) {
            str = "";
        } else {
            str = "\"emc_event_id\":\"" + RazorF40PrecallEvidence533$$ExternalSyntheticBackport1.m11m(smoke[5]) + ":" + RazorF40PrecallEvidence533$$ExternalSyntheticBackport1.m11m(smoke[4]) + "\",";
        }
        String body = append.append(str).append(smoke != null ? "\"emc_ordinal\":" + smoke[3] + "," : "").append("\"only_android_diagnostic\":true}").toString();
        return body.getBytes(StandardCharsets.UTF_8);
    }

    /* JADX WARN: Code restructure failed: missing block: B:104:0x01c4, code lost:
    
        if (r9.contains("\"mission\":" + r30 + r0) == false) goto L92;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x01cc, code lost:
    
        if (r9.contains("\"gameplay_ticks\":0") == false) goto L91;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x01ce, code lost:
    
        if (r31 == null) goto L89;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x01d0, code lost:
    
        r25 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x0204, code lost:
    
        if (r9.contains("\"emc_event_id\":\"" + com.ahsim.demulation.RazorF40PrecallEvidence533$$ExternalSyntheticBackport1.m11m(r31[5]) + ":" + com.ahsim.demulation.RazorF40PrecallEvidence533$$ExternalSyntheticBackport1.m11m(r31[4]) + "\"") == false) goto L100;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x0220, code lost:
    
        if (r9.contains("\"emc_ordinal\":" + r31[3]) == false) goto L100;
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x0225, code lost:
    
        r0 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x0250, code lost:
    
        r15 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x024f, code lost:
    
        r0 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x0223, code lost:
    
        r25 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x0227, code lost:
    
        r25 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x022a, code lost:
    
        r25 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x0324, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x022d, code lost:
    
        r25 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x0234, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x0236, code lost:
    
        r25 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x023f, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x0241, code lost:
    
        r25 = r0;
        r22 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:133:0x0252, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0148, code lost:
    
        r19 = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x014d, code lost:
    
        if (r2 == null) goto L106;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x025b, code lost:
    
        r25 = r0;
        r22 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x014f, code lost:
    
        r9 = r2.toString("UTF-8");
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x015b, code lost:
    
        if (r9.contains("\"schema\":\"demulation.razor.535.partial-68k-backend.v1\"") == false) goto L99;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x015d, code lost:
    
        r22 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x0184, code lost:
    
        if (r9.contains("\"source_rom_sha256\":\"" + r28.toLowerCase(java.util.Locale.ROOT) + "\"") == false) goto L96;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x01a3, code lost:
    
        if (r9.contains("\"house\":" + r29 + r0) == false) goto L93;
     */
    /* JADX WARN: Removed duplicated region for block: B:203:0x0369  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.io.File append(java.io.File r26, java.io.File r27, java.lang.String r28, int r29, int r30, int[] r31, int[] r32) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 907
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ahsim.demulation.RazorM68kRomSmokeEvidence536.append(java.io.File, java.io.File, java.lang.String, int, int, int[], int[]):java.io.File");
    }
}
