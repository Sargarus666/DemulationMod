package com.ahsim.demulation;

import android.content.Context;
import com.ahsim.demulation.DuneHackR82MapContentExtractor;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.Locale;

/* loaded from: classes2.dex */
public final class DuneHackR82MapContentStore {
    private static final String BANK = "map_bank.bin";
    private static final String MANIFEST = "manifest.txt";
    private static final String ROOT = "r82c_maps_preview_v1";

    private DuneHackR82MapContentStore() {
    }

    public static String save(Context context, String sourceSha256, DuneHackR82MapContentExtractor.Result maps) throws IOException {
        if (context == null || maps == null || sourceSha256 == null || !sourceSha256.matches("[0-9a-fA-F]{64}")) {
            throw new IOException("R82C map preview source invalid");
        }
        String key = sourceSha256.toLowerCase(Locale.US);
        File root = new File(context.getFilesDir(), ROOT);
        if (!root.isDirectory() && !root.mkdirs()) {
            throw new IOException("R82C map preview cache root unavailable");
        }
        File published = new File(root, key);
        String manifest = "R82C_MAP_PREVIEW_V1\nsource_sha256=" + key + "\nmaps=45\nhouses=5\nmissions_per_house=9\nstorage_order=atreides,ordos,harkonnen,sardaukar,fremen\npointer_table=0x83C00\nfirst_payload=0x1338B6\ncompact_32x32=" + maps.compactMaps + "\nfull_64x64=" + maps.fullMaps + "\nscenario_bounds=63,63\nbank_bytes=" + DuneHackR82MapContentExtractor.MAP_ARCHIVE_BYTES + "\nbank_sha256=" + maps.archiveSha256 + "\nready=false\ngameplay=false\noverlay=false\n";
        if (valid(published, manifest, maps)) {
            return "cached";
        }
        File staging = new File(root, key + ".tmp." + Long.toHexString(System.nanoTime()));
        if (!staging.mkdir()) {
            throw new IOException("R82C map preview staging unavailable");
        }
        try {
            write(new File(staging, BANK), maps.archive());
            write(new File(staging, MANIFEST), manifest.getBytes(StandardCharsets.US_ASCII));
            if (!valid(staging, manifest, maps)) {
                throw new IOException("R82C map preview staging verification failed");
            }
            if (published.exists()) {
                deleteTree(published);
            }
            if (!staging.renameTo(published)) {
                throw new IOException("R82C map preview atomic publish failed");
            }
            return "stored";
        } finally {
            if (staging.exists()) {
                deleteTree(staging);
            }
        }
    }

    private static boolean valid(File dir, String manifest, DuneHackR82MapContentExtractor.Result maps) {
        if (!dir.isDirectory()) {
            return false;
        }
        try {
            byte[] bank = read(new File(dir, BANK), DuneHackR82MapContentExtractor.MAP_ARCHIVE_BYTES);
            byte[] meta = read(new File(dir, MANIFEST), RazorTerrainAtlas.HEIGHT);
            if (bank.length == 153600 && maps.archiveSha256.equals(DuneHackR82NeutralContentExtractor.sha256(bank))) {
                return manifest.equals(new String(meta, StandardCharsets.US_ASCII));
            }
            return false;
        } catch (IOException e) {
            return false;
        }
    }

    private static byte[] read(File file, int maximum) throws IOException {
        if (!file.isFile() || file.length() <= 0 || file.length() > maximum) {
            throw new IOException("R82C map preview file invalid");
        }
        byte[] bytes = new byte[(int) file.length()];
        FileInputStream in = new FileInputStream(file);
        int pos = 0;
        while (pos < bytes.length) {
            try {
                int n = in.read(bytes, pos, bytes.length - pos);
                if (n <= 0) {
                    throw new IOException("R82C map preview file truncated");
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
            throw new IOException("R82C map preview file grew");
        }
        in.close();
        return bytes;
    }

    private static void write(File target, byte[] bytes) throws IOException {
        FileOutputStream out = new FileOutputStream(target);
        try {
            out.write(bytes);
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

    private static void deleteTree(File target) throws IOException {
        if (target.isDirectory()) {
            File[] children = target.listFiles();
            if (children == null) {
                throw new IOException("R82C map directory unreadable");
            }
            for (File child : children) {
                deleteTree(child);
            }
        }
        if (!target.delete()) {
            throw new IOException("R82C map cache cleanup failed");
        }
    }
}
