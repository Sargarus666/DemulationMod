package com.ahsim.demulation;

import android.content.Context;
import com.ahsim.demulation.DuneHackR82NeutralContentExtractor;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.Locale;

/* loaded from: classes2.dex */
public final class DuneHackR82NeutralContentStore {
    private static final String GAME = "game_palettes.bin";
    private static final String MANIFEST = "manifest.txt";
    private static final int MANIFEST_LIMIT = 2048;
    private static final String REGION = "region_palette.bin";
    private static final String ROOT = "r82c_neutral_preview_v1";

    private DuneHackR82NeutralContentStore() {
    }

    public static String save(Context context, String sourceSha256, DuneHackR82NeutralContentExtractor.Result result) throws IOException {
        if (context == null || result == null || sourceSha256 == null || !sourceSha256.matches("[0-9a-fA-F]{64}")) {
            throw new IOException("R82C preview source fingerprint invalid");
        }
        String key = sourceSha256.toLowerCase(Locale.US);
        File root = new File(context.getFilesDir(), ROOT);
        if (!root.isDirectory() && !root.mkdirs()) {
            throw new IOException("R82C private preview directory unavailable");
        }
        File published = new File(root, key);
        if (isValid(published, key, result)) {
            return "cached";
        }
        File staging = new File(root, key + ".tmp." + Long.toHexString(System.nanoTime()));
        if (!staging.mkdir()) {
            throw new IOException("R82C preview staging unavailable");
        }
        try {
            write(staging, GAME, result.gamePalettes());
            write(staging, REGION, result.regionPalette());
            String manifest = "R82C_NEUTRAL_PREVIEW_V1\nsource_sha256=" + key + "\ngame_offset=" + result.gameOffset + "\nregion_offset=" + result.regionOffset + "\ngame_sha256=" + result.gameSha256 + "\nregion_sha256=" + result.regionSha256 + "\nready=false\nmechanics=false\noverlay=false\n";
            write(staging, MANIFEST, manifest.getBytes(StandardCharsets.US_ASCII));
            if (!isValid(staging, key, result)) {
                throw new IOException("R82C preview verify failed");
            }
            if (published.exists()) {
                deleteTree(published);
            }
            if (!staging.renameTo(published)) {
                throw new IOException("R82C preview atomic publish failed");
            }
            return "stored";
        } finally {
            if (staging.exists()) {
                deleteTree(staging);
            }
        }
    }

    private static boolean isValid(File dir, String sha, DuneHackR82NeutralContentExtractor.Result result) {
        try {
            if (!dir.isDirectory()) {
                return false;
            }
            byte[] game = readSmall(new File(dir, GAME), 512);
            byte[] region = readSmall(new File(dir, REGION), 96);
            byte[] manifestBytes = readSmall(new File(dir, MANIFEST), 2048);
            String meta = new String(manifestBytes, StandardCharsets.US_ASCII);
            if (result.gameSha256.equals(DuneHackR82NeutralContentExtractor.sha256(game)) && result.regionSha256.equals(DuneHackR82NeutralContentExtractor.sha256(region)) && meta.startsWith("R82C_NEUTRAL_PREVIEW_V1\n") && meta.contains("\nsource_sha256=" + sha + "\n") && meta.contains("\ngame_offset=" + result.gameOffset + "\n") && meta.contains("\nregion_offset=" + result.regionOffset + "\n") && meta.contains("\ngame_sha256=" + result.gameSha256 + "\n") && meta.contains("\nregion_sha256=" + result.regionSha256 + "\n")) {
                return meta.endsWith("\nready=false\nmechanics=false\noverlay=false\n");
            }
            return false;
        } catch (IOException e) {
            return false;
        }
    }

    private static byte[] readSmall(File file, int limit) throws IOException {
        int k;
        if (!file.isFile() || file.length() > limit || file.length() <= 0) {
            throw new IOException("R82C preview missing or oversized file");
        }
        byte[] bytes = new byte[(int) file.length()];
        FileInputStream in = new FileInputStream(file);
        int n = 0;
        while (n < bytes.length && (k = in.read(bytes, n, bytes.length - n)) > 0) {
            try {
                n += k;
            } catch (Throwable th) {
                try {
                    in.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (n != bytes.length || in.read() != -1) {
            throw new IOException("R82C preview truncated/changing file");
        }
        in.close();
        return bytes;
    }

    private static void write(File root, String name, byte[] bytes) throws IOException {
        FileOutputStream out = new FileOutputStream(new File(root, name));
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

    private static void deleteTree(File file) throws IOException {
        if (file.isDirectory()) {
            File[] children = file.listFiles();
            if (children == null) {
                throw new IOException("R82C preview directory unreadable");
            }
            for (File child : children) {
                deleteTree(child);
            }
        }
        if (!file.delete()) {
            throw new IOException("R82C preview cleanup failed");
        }
    }
}
