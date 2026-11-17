package com.ahsim.demulation;

import android.content.Context;
import com.ahsim.demulation.DuneHackR82CampaignLinkProbe;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.Locale;

/* loaded from: classes2.dex */
public final class DuneHackR82CampaignLinkStore {
    private static final String PROFILE = "profile.txt";
    private static final String ROOT = "r82c_campaign_links_preview_v1";

    private DuneHackR82CampaignLinkStore() {
    }

    public static String save(Context context, String expectedSourceSha256, DuneHackR82CampaignLinkProbe.Result result) throws IOException {
        if (context == null || result == null || result.confidence == DuneHackR82CampaignLinkProbe.Confidence.UNSUPPORTED || expectedSourceSha256 == null || !expectedSourceSha256.matches("[0-9a-fA-F]{64}") || !result.sourceSha256.equals(expectedSourceSha256.toLowerCase(Locale.US))) {
            throw new IOException("R82C campaign preview source fingerprint mismatch");
        }
        byte[] profile = DuneHackR82CampaignLinkProbe.profileText(result).getBytes(StandardCharsets.US_ASCII);
        File root = new File(context.getFilesDir(), ROOT);
        if (!root.isDirectory() && !root.mkdirs()) {
            throw new IOException("R82C campaign preview folder unavailable");
        }
        File published = new File(root, result.sourceSha256);
        if (valid(published, profile)) {
            return "cached";
        }
        File staging = new File(root, result.sourceSha256 + ".tmp." + Long.toHexString(System.nanoTime()));
        if (!staging.mkdir()) {
            throw new IOException("R82C campaign preview staging unavailable");
        }
        try {
            File payload = new File(staging, PROFILE);
            FileOutputStream out = new FileOutputStream(payload);
            try {
                out.write(profile);
                out.getFD().sync();
                out.close();
                if (!valid(staging, profile)) {
                    throw new IOException("R82C campaign preview verification failed");
                }
                if (published.exists()) {
                    deleteTree(published);
                }
                if (!staging.renameTo(published)) {
                    throw new IOException("R82C campaign preview atomic publish failed");
                }
                return "stored";
            } finally {
            }
        } finally {
            if (staging.exists()) {
                deleteTree(staging);
            }
        }
    }

    private static boolean valid(File directory, byte[] bytes) {
        File file = new File(directory, PROFILE);
        if (!directory.isDirectory() || !file.isFile() || file.length() != bytes.length || file.length() <= 0 || file.length() > 32768) {
            return false;
        }
        byte[] actual = new byte[(int) file.length()];
        try {
            FileInputStream in = new FileInputStream(file);
            int pos = 0;
            while (pos < actual.length) {
                try {
                    int n = in.read(actual, pos, actual.length - pos);
                    if (n < 1) {
                        in.close();
                        return false;
                    }
                    pos += n;
                } finally {
                }
            }
            if (in.read() != -1) {
                in.close();
                return false;
            }
            in.close();
            return Arrays.equals(actual, bytes);
        } catch (IOException e) {
            return false;
        }
    }

    private static void deleteTree(File file) throws IOException {
        if (file.isDirectory()) {
            File[] children = file.listFiles();
            if (children == null) {
                throw new IOException("R82C campaign directory unreadable");
            }
            for (File child : children) {
                deleteTree(child);
            }
        }
        if (!file.delete()) {
            throw new IOException("R82C campaign cache cleanup failed");
        }
    }
}
