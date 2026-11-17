package com.ahsim.demulation;

import android.content.Context;
import com.ahsim.demulation.DuneHackR82UnitDispatchProbe;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.Locale;

/* loaded from: classes2.dex */
public final class DuneHackR82UnitDispatchStore {
    private static final String ROOT = "r82c_unit_dispatch_audit_v1";

    private DuneHackR82UnitDispatchStore() {
    }

    public static String auditText(String hash, DuneHackR82UnitDispatchProbe.Result result) throws IOException {
        if (hash == null || !hash.matches("[0-9a-fA-F]{64}") || result == null || !hash.equalsIgnoreCase(result.sourceSha256)) {
            throw new IOException("R82C unit dispatcher identity mismatch");
        }
        StringBuilder out = new StringBuilder(RazorTerrainAtlas.HEIGHT);
        out.append("R82C_UNIT_DISPATCH_V1\nsource_sha256=").append(hash.toLowerCase(Locale.US)).append('\n');
        out.append("script_table_offset=0x").append(Integer.toHexString(result.scriptIdOffset)).append('\n').append("unit_pointer_table_offset=0x").append(Integer.toHexString(result.unitPointerTableOffset)).append('\n').append("unit_record_base=0x").append(Integer.toHexString(result.unitRecordsOffset)).append('\n').append("unit_record_bytes=").append(result.unitRecordSize).append('\n').append("unit_types=32\nemc_entries=27\n");
        String[] names = {"hurricane", "rocketquad", "lasertank", "hovertank", "orka"};
        for (int id = 27; id < 32; id++) {
            String key = "type" + id + "_" + names[id - 27];
            out.append(key).append("_emc=").append(result.scriptForUnitType(id)).append('\n').append(key).append("_record_sha256=").append(result.extraUnitRecordSha256(id)).append('\n');
        }
        out.append("script_mapping_identified=true\n").append("native_function_abi=unverified\n").append("modified_unit_gameplay=unverified\n").append("game_ready=false\noverlay=false\nexecute_scripts=false\n");
        return out.toString();
    }

    public static String save(Context context, String hash, DuneHackR82UnitDispatchProbe.Result result) throws IOException {
        int n;
        if (context == null) {
            throw new IOException("R82C dispatcher context missing");
        }
        String key = hash == null ? "" : hash.toLowerCase(Locale.US);
        byte[] expected = auditText(key, result).getBytes(StandardCharsets.US_ASCII);
        if (expected.length > 8192) {
            throw new IOException("R82C dispatcher metadata too large");
        }
        File root = new File(context.getFilesDir(), ROOT);
        if (!root.isDirectory() && !root.mkdirs()) {
            throw new IOException("R82C audit root unavailable");
        }
        File target = new File(root, key + ".txt");
        if (target.isFile() && target.length() == expected.length) {
            byte[] actual = new byte[expected.length];
            FileInputStream f = new FileInputStream(target);
            int p = 0;
            while (p < actual.length && (n = f.read(actual, p, actual.length - p)) >= 1) {
                try {
                    p += n;
                } catch (Throwable th) {
                    try {
                        f.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            }
            if (p == actual.length && f.read() == -1) {
                if (Arrays.equals(actual, expected)) {
                    f.close();
                    return "cached";
                }
            }
            f.close();
        }
        File temp = File.createTempFile("dispatch_", ".tmp", root);
        try {
            FileOutputStream f2 = new FileOutputStream(temp);
            try {
                f2.write(expected);
                f2.getFD().sync();
                f2.close();
                if (!temp.renameTo(target)) {
                    if (target.exists() && !target.delete()) {
                        throw new IOException("R82C old dispatch report not replaceable");
                    }
                    if (!temp.renameTo(target)) {
                        throw new IOException("R82C dispatch report commit failed");
                    }
                }
                if (temp.exists() && !temp.delete()) {
                    throw new IOException("R82C temp report cleanup failed");
                }
                return "stored";
            } finally {
            }
        } catch (Throwable th3) {
            if (temp.exists() && !temp.delete()) {
                throw new IOException("R82C temp report cleanup failed");
            }
            throw th3;
        }
    }
}
