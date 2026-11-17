package com.ahsim.demulation;

import android.content.Context;
import com.ahsim.demulation.DuneHackR82AsmHookProbe;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.Locale;

/* loaded from: classes2.dex */
public final class DuneHackR82AsmHookStore {
    private static final String ROOT = "r82c_asm_hook_audit_v1";

    private DuneHackR82AsmHookStore() {
    }

    public static String auditText(String sha, DuneHackR82AsmHookProbe.Result result) throws IOException {
        if (sha == null || !sha.matches("[0-9a-fA-F]{64}") || result == null || !sha.equalsIgnoreCase(result.sourceSha256)) {
            throw new IOException("R82C ASM hook audit ROM identity mismatch");
        }
        StringBuilder out = new StringBuilder(2200);
        out.append("R82C_ASM_HOOK_AUDIT_V1\nsource_sha256=").append(sha.toLowerCase(Locale.US)).append('\n').append("observed_opcode_locations=").append(result.opcodeObservations).append('\n').append("unresolved_locations=").append(result.unresolvedHooks).append('\n');
        for (DuneHackR82AsmHookProbe.Hook h : result.hooks) {
            out.append(h.f2id).append("=").append(h.evidence).append(";gate=").append(h.gate).append(";layout=").append(h.matchedLayout).append(";address=").append(h.matchedAddress).append(";matching_variants=").append(h.matchingVariants).append('\n');
        }
        out.append("asm_source_options_verified=false\n").append("asm_jump_targets_verified=false\n").append("asm_semantics_verified=false\n").append("game_ready=false\nexecute_rom_code=false\noverlay=false\n");
        return out.toString();
    }

    public static String save(Context context, String sha, DuneHackR82AsmHookProbe.Result result) throws IOException {
        int n;
        if (context == null) {
            throw new IOException("Missing application context");
        }
        byte[] contents = auditText(sha, result).getBytes(StandardCharsets.US_ASCII);
        if (contents.length > 8192) {
            throw new IOException("ASM audit too large");
        }
        File root = new File(context.getFilesDir(), ROOT);
        if (!root.isDirectory() && !root.mkdirs()) {
            throw new IOException("ASM audit folder unavailable");
        }
        File target = new File(root, sha.toLowerCase(Locale.US) + ".txt");
        if (target.isFile() && target.length() == contents.length) {
            byte[] previous = new byte[contents.length];
            FileInputStream input = new FileInputStream(target);
            int p = 0;
            while (p < previous.length && (n = input.read(previous, p, previous.length - p)) > 0) {
                try {
                    p += n;
                } catch (Throwable th) {
                    try {
                        input.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            }
            if (p == previous.length && input.read() == -1) {
                if (Arrays.equals(contents, previous)) {
                    input.close();
                    return "cached";
                }
            }
            input.close();
        }
        File tmp = File.createTempFile("hooks_", ".tmp", root);
        try {
            FileOutputStream output = new FileOutputStream(tmp);
            try {
                output.write(contents);
                output.getFD().sync();
                output.close();
                if (!tmp.renameTo(target)) {
                    if (target.exists() && !target.delete()) {
                        throw new IOException("Cannot replace ASM audit");
                    }
                    if (!tmp.renameTo(target)) {
                        throw new IOException("Cannot commit ASM audit");
                    }
                }
                if (tmp.exists() && !tmp.delete()) {
                    throw new IOException("Cannot clean ASM audit temp");
                }
                return "stored";
            } finally {
            }
        } catch (Throwable th3) {
            if (tmp.exists() && !tmp.delete()) {
                throw new IOException("Cannot clean ASM audit temp");
            }
            throw th3;
        }
    }
}
