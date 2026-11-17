package com.ahsim.demulation;

import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.Locale;

/* loaded from: classes2.dex */
public final class RazorF40SandboxEvidence534 {
    public static final String ENTRY = "razor_f40_sandbox_gate534.json";

    private RazorF40SandboxEvidence534() {
    }

    private static int digest(int[] s) {
        int h = -2128831035;
        for (int w : s) {
            for (int j = 3; j >= 0; j--) {
                h = (((w >>> (j * 8)) & 255) ^ h) * 16777619;
            }
        }
        return h;
    }

    public static void verify(int[] g, int[] s) throws IOException {
        if (g == null || g.length != 16 || s == null || s.length != 48 || g[0] != 534 || g[1] != 1 || g[2] != 15 || g[3] != s[2] || g[4] != s[13] || g[5] != s[14] || g[6] != s[15] || g[7] != s[16] || g[8] != s[12] || g[9] != digest(s) || g[10] == g[8] || g[11] != 40 || g[12] != 1 || g[13] != 0 || g[14] != 0 || g[15] != 0 || s[0] != 533 || s[1] != 1 || s[7] != 40 || s[40] != 15 || s[44] != 0 || s[45] != 0 || s[46] != 0 || s[47] != 2) {
            throw new IOException("Razor 534 same-event sandbox gate untrusted");
        }
    }

    public static byte[] json(String sha, int house, int mission, int[] g, int[] s) throws IOException {
        if (sha == null || !sha.matches("[0-9a-fA-F]{64}") || house < 0 || house >= 5 || mission < 1 || mission > 9) {
            throw new IOException("Razor 534 ROM/mission identity invalid");
        }
        if (g != null) {
            verify(g, s);
        }
        StringBuilder b = new StringBuilder();
        b.append("{\"schema\":\"demulation.razor.534.f40-sandbox-gate.v1\",\"source_rom_sha256\":\"").append(sha.toLowerCase(Locale.ROOT)).append("\",\"house\":").append(house).append(",\"mission\":").append(mission).append(",\"status\":\"").append(g == null ? s == null ? "NO_SAME_EVENT_PRECALL" : "HOST_COPY_GATE_NOT_CAPTURED" : "HOST_COPY_ISOLATED_F40_BLOCKED").append("\",\"genesis_cpu_authenticated\":false,\"genesis_ram_available\":false").append(",\"genesis_unit_slot_proven\":false,\"m68k_executor_connected\":false").append(",\"native_callback_executed\":false,\"gameplay_ticks\":0,\"gameplay_authorized\":false").append(",\"missing_capability_bits\":15");
        if (g != null) {
            b.append(",\"host_private_copy_verified\":true").append(",\"emc_event_id\":\"").append(RazorF40PrecallEvidence533$$ExternalSyntheticBackport1.m11m(g[5])).append(':').append(RazorF40PrecallEvidence533$$ExternalSyntheticBackport1.m11m(g[4])).append('\"').append(",\"emc_ordinal\":").append(g[3]).append(",\"emc_snapshot_fnv32\":").append(RazorF40PrecallEvidence533$$ExternalSyntheticBackport1.m11m(g[9])).append(",\"host_world_fnv32\":").append(RazorF40PrecallEvidence533$$ExternalSyntheticBackport1.m11m(g[8])).append(",\"isolated_copy_mutated_fnv32\":").append(RazorF40PrecallEvidence533$$ExternalSyntheticBackport1.m11m(g[10]));
        } else {
            b.append(",\"host_private_copy_verified\":false");
        }
        return b.append('}').toString().getBytes(StandardCharsets.UTF_8);
    }

    /* JADX WARN: Code restructure failed: missing block: B:104:0x01a8, code lost:
    
        if (r9.contains("\"house\":" + r29 + r0) == false) goto L99;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x01c9, code lost:
    
        if (r9.contains("\"mission\":" + r30 + r0) == false) goto L98;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x01d1, code lost:
    
        if (r9.contains("\"genesis_cpu_authenticated\":false") == false) goto L97;
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x01d9, code lost:
    
        if (r9.contains("\"gameplay_ticks\":0") == false) goto L96;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x01db, code lost:
    
        if (r31 == null) goto L94;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x01e3, code lost:
    
        if (r9.contains("\"status\":\"EMC_PRECALL_CAPTURED\"") == false) goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x01e5, code lost:
    
        r25 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x0219, code lost:
    
        if (r9.contains("\"session_event_id\":\"" + com.ahsim.demulation.RazorF40PrecallEvidence533$$ExternalSyntheticBackport1.m11m(r31[5]) + ":" + com.ahsim.demulation.RazorF40PrecallEvidence533$$ExternalSyntheticBackport1.m11m(r31[4]) + "\"") == false) goto L106;
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x0221, code lost:
    
        r0 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x024f, code lost:
    
        r14 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x024e, code lost:
    
        r0 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x021c, code lost:
    
        r25 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:125:0x021f, code lost:
    
        r25 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x0223, code lost:
    
        r25 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x0226, code lost:
    
        r25 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x0229, code lost:
    
        r25 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x0323, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:130:0x022c, code lost:
    
        r25 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x0233, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:135:0x0235, code lost:
    
        r25 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x023e, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x0240, code lost:
    
        r25 = r0;
        r22 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:142:0x0251, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x014d, code lost:
    
        r19 = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x0152, code lost:
    
        if (r2 == null) goto L112;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x025a, code lost:
    
        r25 = r0;
        r22 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x0154, code lost:
    
        r9 = r2.toString("UTF-8");
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x0160, code lost:
    
        if (r9.contains("\"schema\":\"demulation.razor.533.f40-precall.v1\"") == false) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x0162, code lost:
    
        r22 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x0189, code lost:
    
        if (r9.contains("\"source_rom_sha256\":\"" + r28.toLowerCase(java.util.Locale.ROOT) + "\"") == false) goto L102;
     */
    /* JADX WARN: Removed duplicated region for block: B:212:0x0368  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.io.File append(java.io.File r26, java.io.File r27, java.lang.String r28, int r29, int r30, int[] r31, int[] r32) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 906
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ahsim.demulation.RazorF40SandboxEvidence534.append(java.io.File, java.io.File, java.lang.String, int, int, int[], int[]):java.io.File");
    }
}
