package com.ahsim.demulation;

import android.content.Context;
import com.ahsim.demulation.DuneHackR82ScenarioRecordDecoder;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.Locale;

/* loaded from: classes2.dex */
public final class DuneHackR82ScenarioRecordStore {
    private static final String REPORT = "records.txt";
    private static final String ROOT = "r82c_scenario_records_preview_v1";

    private DuneHackR82ScenarioRecordStore() {
    }

    public static String auditText(String sourceHash, DuneHackR82ScenarioRecordDecoder.Bank bank) throws IOException {
        if (bank == null || sourceHash == null || !sourceHash.matches("[0-9a-fA-F]{64}")) {
            throw new IOException("Invalid R82C scenario audit identity");
        }
        StringBuilder s = new StringBuilder(5000);
        s.append("R82C_SCENARIO_RECORDS_V1\nsource_sha256=").append(sourceHash.toLowerCase(Locale.US)).append("\nhouses=5\nmissions_per_house=9\n").append("decoded_records=").append(bank.totalRecords).append("\nunits=").append(bank.totalUnits).append("\nstructures=").append(bank.totalStructures).append("\nteams=").append(bank.totalTeams).append("\nreinforcements=").append(bank.totalReinforcements).append("\nextra_house_section_0B=").append(bank.totalFifthHouseRecords).append("\nready=false\ngameplay=false\noverlay=false\n").append("house,mission,bytes,records,units,structures,teams,reinforcements,house_0B,map_seed\n");
        for (int h = 0; h < 5; h++) {
            for (int m = 1; m <= 9; m++) {
                DuneHackR82ScenarioRecordDecoder.Document d = bank.document(h, m);
                s.append(h).append(',').append(m).append(',').append(d.byteCount).append(',').append(d.recordCount).append(',').append(d.unitCount).append(',').append(d.structureCount).append(',').append(d.teamCount).append(',').append(d.reinforcementCount).append(',').append(d.fifthHouseRecords).append(',').append(d.seed).append('\n');
            }
        }
        return s.toString();
    }

    public static String save(Context context, String sourceHash, DuneHackR82ScenarioRecordDecoder.Bank bank) throws IOException {
        if (context == null) {
            throw new IOException("Missing R82C audit context");
        }
        String normalized = sourceHash == null ? "" : sourceHash.toLowerCase(Locale.US);
        byte[] expected = auditText(normalized, bank).getBytes(StandardCharsets.US_ASCII);
        if (expected.length > 32768) {
            throw new IOException("R82C audit profile oversized");
        }
        File root = new File(context.getFilesDir(), ROOT);
        if (!root.isDirectory() && !root.mkdirs()) {
            throw new IOException("R82C audit directory unavailable");
        }
        File published = new File(root, normalized);
        if (valid(published, expected)) {
            return "cached";
        }
        File stage = new File(root, normalized + ".tmp." + Long.toHexString(System.nanoTime()));
        if (!stage.mkdir()) {
            throw new IOException("R82C audit staging unavailable");
        }
        try {
            File output = new File(stage, REPORT);
            FileOutputStream stream = new FileOutputStream(output);
            try {
                stream.write(expected);
                stream.getFD().sync();
                stream.close();
                if (!valid(stage, expected)) {
                    throw new IOException("R82C audit verification failed");
                }
                if (published.exists()) {
                    deleteTree(published);
                }
                if (!stage.renameTo(published)) {
                    throw new IOException("R82C audit publish failed");
                }
                return "stored";
            } finally {
            }
        } finally {
            if (stage.exists()) {
                deleteTree(stage);
            }
        }
    }

    private static boolean valid(File directory, byte[] expected) {
        boolean z;
        File file = new File(directory, REPORT);
        if (!directory.isDirectory() || !file.isFile() || file.length() != expected.length) {
            return false;
        }
        byte[] read = new byte[expected.length];
        try {
            FileInputStream in = new FileInputStream(file);
            int at = 0;
            while (at < read.length) {
                try {
                    int n = in.read(read, at, read.length - at);
                    if (n > 0) {
                        at += n;
                    } else {
                        in.close();
                        return false;
                    }
                } finally {
                }
            }
            if (in.read() == -1) {
                if (Arrays.equals(read, expected)) {
                    z = true;
                    in.close();
                    return z;
                }
            }
            z = false;
            in.close();
            return z;
        } catch (IOException e) {
            return false;
        }
    }

    private static void deleteTree(File f) throws IOException {
        if (f.isDirectory()) {
            File[] kids = f.listFiles();
            if (kids == null) {
                throw new IOException("R82C audit staging unreadable");
            }
            for (File k : kids) {
                deleteTree(k);
            }
        }
        if (!f.delete()) {
            throw new IOException("R82C audit cleanup failed");
        }
    }
}
