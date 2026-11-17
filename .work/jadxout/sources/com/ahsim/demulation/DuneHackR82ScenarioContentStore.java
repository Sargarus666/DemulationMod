package com.ahsim.demulation;

import android.content.Context;
import com.ahsim.demulation.DuneHackR82GameplayParameterProbe;
import com.ahsim.demulation.DuneHackR82ScenarioContentExtractor;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.Locale;

/* loaded from: classes2.dex */
public final class DuneHackR82ScenarioContentStore {
    private static final String BANK = "scenario_bank.bin";
    private static final String MANIFEST = "manifest.txt";
    private static final String PARAMETERS = "troop_parameters.bin";
    private static final String ROOT = "r82c_scenarios_preview_v1";

    private DuneHackR82ScenarioContentStore() {
    }

    public static String save(Context context, String sourceSha256, DuneHackR82ScenarioContentExtractor.Result result, DuneHackR82GameplayParameterProbe.Result parameters) throws IOException {
        if (context == null || result == null || parameters == null || sourceSha256 == null || !sourceSha256.matches("[0-9a-fA-F]{64}")) {
            throw new IOException("R82C scenario preview source fingerprint invalid");
        }
        String key = sourceSha256.toLowerCase(Locale.US);
        File root = new File(context.getFilesDir(), ROOT);
        if (!root.isDirectory() && !root.mkdirs()) {
            throw new IOException("R82C scenario preview folder unavailable");
        }
        File published = new File(root, key);
        String manifest = "R82C_SCENARIO_PREVIEW_V1\nsource_sha256=" + key + "\npointer_table=0x83CB4\nhouses=5\nmissions_per_house=9\npayload_bytes=" + result.payloadBytes + "\nbank_sha256=" + result.archiveSha256 + "\nparameters_offset=0x25D86\nparameters_bytes=40\nparameters_sha256=" + parameters.sha256 + "\nready=false\ngameplay=false\noverlay=false\n";
        if (isValid(published, manifest, result, parameters)) {
            return "cached";
        }
        File staging = new File(root, key + ".tmp." + Long.toHexString(System.nanoTime()));
        if (!staging.mkdir()) {
            throw new IOException("R82C scenario preview staging unavailable");
        }
        try {
            write(staging, BANK, result.archive());
            write(staging, PARAMETERS, parameters.bytes());
            write(staging, MANIFEST, manifest.getBytes(StandardCharsets.US_ASCII));
            if (!isValid(staging, manifest, result, parameters)) {
                throw new IOException("R82C scenario preview checksum mismatch");
            }
            if (published.exists()) {
                deleteTree(published);
            }
            if (!staging.renameTo(published)) {
                throw new IOException("R82C scenario preview publish failed");
            }
            return "stored";
        } finally {
            if (staging.exists()) {
                deleteTree(staging);
            }
        }
    }

    private static boolean isValid(File dir, String expectedManifest, DuneHackR82ScenarioContentExtractor.Result result, DuneHackR82GameplayParameterProbe.Result parameters) {
        try {
            if (!dir.isDirectory()) {
                return false;
            }
            byte[] content = read(new File(dir, BANK), result.payloadBytes);
            byte[] paramBytes = read(new File(dir, PARAMETERS), 40);
            byte[] m = read(new File(dir, MANIFEST), 512);
            if (content.length == result.payloadBytes && paramBytes.length == 40 && result.archiveSha256.equals(DuneHackR82NeutralContentExtractor.sha256(content)) && parameters.sha256.equals(DuneHackR82NeutralContentExtractor.sha256(paramBytes))) {
                return expectedManifest.equals(new String(m, StandardCharsets.US_ASCII));
            }
            return false;
        } catch (IOException e) {
            return false;
        }
    }

    private static byte[] read(File path, int limit) throws IOException {
        if (!path.isFile() || path.length() <= 0 || path.length() > limit) {
            throw new IOException("R82C scenario cache file missing or too large");
        }
        byte[] content = new byte[(int) path.length()];
        FileInputStream in = new FileInputStream(path);
        int pos = 0;
        while (pos < content.length) {
            try {
                int n = in.read(content, pos, content.length - pos);
                if (n <= 0) {
                    throw new IOException("R82C scenario cache truncated");
                }
                pos += n;
            } catch (Throwable th) {
                try {
                    in.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (in.read() != -1) {
            throw new IOException("R82C scenario cache grew while reading");
        }
        in.close();
        return content;
    }

    private static void write(File parent, String name, byte[] content) throws IOException {
        FileOutputStream out = new FileOutputStream(new File(parent, name));
        try {
            out.write(content);
            out.getFD().sync();
            out.close();
        } catch (Throwable th) {
            try {
                out.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    private static void deleteTree(File file) throws IOException {
        if (file.isDirectory()) {
            File[] children = file.listFiles();
            if (children == null) {
                throw new IOException("R82C scenario directory unreadable");
            }
            for (File child : children) {
                deleteTree(child);
            }
        }
        if (!file.delete()) {
            throw new IOException("R82C scenario file cleanup failed");
        }
    }
}
