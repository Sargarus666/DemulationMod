package com.ahsim.demulation;

import android.content.Context;
import com.ahsim.demulation.DuneHackR82ScenarioIdentityAudit;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.Locale;

/* loaded from: classes2.dex */
public final class DuneHackR82ScenarioIdentityStore {
    private static final String FILE_NAME = "identity.txt";
    private static final String ROOT = "r82c_scenario_identity_audit_v1";

    private DuneHackR82ScenarioIdentityStore() {
    }

    public static String reportText(String sourceSha256, DuneHackR82ScenarioIdentityAudit.Result result) throws IOException {
        if (sourceSha256 == null || !sourceSha256.matches("[0-9a-fA-F]{64}") || result == null || result.scenarios != 45) {
            throw new IOException("Unverified R82C identity audit");
        }
        StringBuilder s = new StringBuilder(GenesisObjectArt.VRAM_PATTERN_COUNT);
        s.append("R82C_SCENARIO_IDENTITIES_V1\nsource_sha256=").append(sourceSha256.toLowerCase(Locale.US)).append("\nscenarios=").append(result.scenarios).append("\nobjects_checked=").append(result.checkedObjects).append("\nunits=").append(result.units).append("\nplaced_structures=").append(result.structures).append("\ngeneric_structure_tiles=").append(result.genericStructureTiles).append("\nteams=").append(result.teams).append("\nreinforcements=").append(result.reinforcements).append("\nextra_house_sections_0B=").append(result.fifthHouseSections).append("\nready=false\ngameplay=false\noverlay=false\n");
        for (int i = 0; i < 5; i++) {
            s.append("house_").append(i).append('_').append(DuneHackR82ScenarioIdentityAudit.houseName(i)).append('=').append(result.ownerCounts()[i]).append('\n');
        }
        int[] units = result.unitTypeCounts();
        for (int i2 = 0; i2 < units.length; i2++) {
            s.append("unit_").append(i2).append('_').append(DuneHackR82ScenarioIdentityAudit.unitTypeName(i2).replace(' ', '_')).append('=').append(units[i2]).append('\n');
        }
        int[] structures = result.structureTypeCounts();
        for (int i3 = 0; i3 < structures.length; i3++) {
            s.append("structure_").append(i3).append('_').append(DuneHackR82ScenarioIdentityAudit.structureTypeName(i3).replace(' ', '_')).append('=').append(structures[i3]).append('\n');
        }
        return s.toString();
    }

    public static String save(Context context, String sourceSha256, DuneHackR82ScenarioIdentityAudit.Result result) throws IOException {
        if (context == null) {
            throw new IOException("Missing R82C audit context");
        }
        String normalized = sourceSha256 == null ? "" : sourceSha256.toLowerCase(Locale.US);
        byte[] expected = reportText(normalized, result).getBytes(StandardCharsets.US_ASCII);
        if (expected.length > 16384) {
            throw new IOException("R82C identity audit too large");
        }
        File root = new File(context.getFilesDir(), ROOT);
        if (!root.isDirectory() && !root.mkdirs()) {
            throw new IOException("R82C audit directory unavailable");
        }
        File published = new File(root, normalized);
        if (valid(published, expected)) {
            return "cached";
        }
        File temp = new File(root, normalized + ".tmp." + Long.toHexString(System.nanoTime()));
        if (!temp.mkdir()) {
            throw new IOException("R82C audit staging unavailable");
        }
        try {
            File record = new File(temp, FILE_NAME);
            FileOutputStream output = new FileOutputStream(record);
            try {
                output.write(expected);
                output.getFD().sync();
                output.close();
                if (!valid(temp, expected)) {
                    throw new IOException("R82C audit staging verification failed");
                }
                if (published.exists()) {
                    deleteTree(published);
                }
                if (!temp.renameTo(published)) {
                    throw new IOException("R82C audit publish failed");
                }
                return "stored";
            } finally {
            }
        } finally {
            if (temp.exists()) {
                deleteTree(temp);
            }
        }
    }

    private static boolean valid(File directory, byte[] expected) {
        boolean z;
        File file = new File(directory, FILE_NAME);
        if (!directory.isDirectory() || !file.isFile() || file.length() != expected.length) {
            return false;
        }
        byte[] bytes = new byte[expected.length];
        try {
            FileInputStream input = new FileInputStream(file);
            int offset = 0;
            while (offset < bytes.length) {
                try {
                    int n = input.read(bytes, offset, bytes.length - offset);
                    if (n > 0) {
                        offset += n;
                    } else {
                        input.close();
                        return false;
                    }
                } finally {
                }
            }
            if (input.read() == -1) {
                if (Arrays.equals(bytes, expected)) {
                    z = true;
                    input.close();
                    return z;
                }
            }
            z = false;
            input.close();
            return z;
        } catch (IOException e) {
            return false;
        }
    }

    private static void deleteTree(File f) throws IOException {
        if (f.isDirectory()) {
            File[] children = f.listFiles();
            if (children == null) {
                throw new IOException("R82C audit directory unreadable");
            }
            for (File child : children) {
                deleteTree(child);
            }
        }
        if (!f.delete()) {
            throw new IOException("R82C audit cleanup failed");
        }
    }
}
