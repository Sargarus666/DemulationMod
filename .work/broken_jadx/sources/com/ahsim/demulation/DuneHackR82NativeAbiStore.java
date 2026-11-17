package com.ahsim.demulation;

import android.content.Context;
import com.ahsim.demulation.DuneHackR82NativeAbiProbe;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.Locale;

/* loaded from: classes2.dex */
public final class DuneHackR82NativeAbiStore {
    private static final String ROOT = "r82c_native_abi_audit_v1";

    private DuneHackR82NativeAbiStore() {
    }

    private static void writeBank(StringBuilder out, DuneHackR82NativeAbiProbe.Bank bank) {
        out.append(bank.name).append("_instructions=").append(bank.instructionCount).append('\n');
        out.append(bank.name).append("_execute_calls=").append(bank.executeCount).append('\n');
        out.append(bank.name).append("_unique_ids=").append(bank.distinctNativeIds).append('\n');
        out.append(bank.name).append("_native_mask=").append(String.format(Locale.US, "%016x", Long.valueOf(bank.nativeIdMask))).append('\n');
        for (int id = 0; id <= 63; id++) {
            if (bank.calls(id) > 0) {
                out.append(bank.name).append("_id_").append(id).append("=").append(bank.calls(id)).append('\n');
            }
        }
    }

    public static String auditText(String sha, DuneHackR82NativeAbiProbe.Result result) throws IOException {
        if (sha == null || !sha.matches("[0-9a-fA-F]{64}") || result == null || !sha.equalsIgnoreCase(result.sourceSha256)) {
            throw new IOException("R82C ABI report ROM identity mismatch");
        }
        StringBuilder out = new StringBuilder(2400);
        out.append("R82C_NATIVE_EXECUTE_AUDIT_V1\nsource_sha256=").append(sha.toLowerCase(Locale.US)).append('\n');
        writeBank(out, result.build);
        writeBank(out, result.team);
        writeBank(out, result.unit);
        out.append("numeric_id_inventory_verified=true\n").append("native_function_abi_verified=false\n").append("callback_semantics_verified=false\n").append("game_ready=false\nexecute_scripts=false\noverlay=false\n");
        return out.toString();
    }

    public static String save(Context context, String sha, DuneHackR82NativeAbiProbe.Result result) throws IOException {
        int n;
        if (context == null) {
            throw new IOException("R82C ABI audit context missing");
        }
        byte[] content = auditText(sha, result).getBytes(StandardCharsets.US_ASCII);
        if (content.length > 8192) {
            throw new IOException("R82C ABI report exceeds cap");
        }
        File root = new File(context.getFilesDir(), ROOT);
        if (!root.isDirectory() && !root.mkdirs()) {
            throw new IOException("R82C ABI report folder unavailable");
        }
        File target = new File(root, sha.toLowerCase(Locale.US) + ".txt");
        if (target.isFile() && target.length() == content.length) {
            byte[] old = new byte[content.length];
            FileInputStream stream = new FileInputStream(target);
            int p = 0;
            while (p < old.length && (n = stream.read(old, p, old.length - p)) > 0) {
                try {
                    p += n;
                } catch (Throwable th) {
                    try {
                        stream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            }
            if (p == old.length && stream.read() == -1) {
                if (Arrays.equals(old, content)) {
                    stream.close();
                    return "cached";
                }
            }
            stream.close();
        }
        File temp = File.createTempFile("native_", ".tmp", root);
        try {
            FileOutputStream stream2 = new FileOutputStream(temp);
            try {
                stream2.write(content);
                stream2.getFD().sync();
                stream2.close();
                if (!temp.renameTo(target)) {
                    if (target.exists() && !target.delete()) {
                        throw new IOException("Cannot replace R82C ABI report");
                    }
                    if (!temp.renameTo(target)) {
                        throw new IOException("Cannot commit R82C ABI report");
                    }
                }
                if (temp.exists() && !temp.delete()) {
                    throw new IOException("Cannot clean R82C ABI temp");
                }
                return "stored";
            } finally {
            }
        } catch (Throwable th3) {
            if (temp.exists() && !temp.delete()) {
                throw new IOException("Cannot clean R82C ABI temp");
            }
            throw th3;
        }
    }
}
