package com.ahsim.demulation;

import android.content.Context;
import com.ahsim.demulation.DuneHackR82cRazorMissionBundle;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Locale;

/* loaded from: classes2.dex */
public final class DuneHackR82cRazorMissionStore {
    private static final String MANIFEST = "manifest.txt";
    private static final String MAPS = "maps.bin";
    private static final String ROOT = "razor_r82c_mission_preview_v1";
    private static final String SCENARIOS = "scenarios.bin";

    private DuneHackR82cRazorMissionStore() {
    }

    public static String save(Context context, DuneHackR82cRazorMissionBundle.Result result) throws IOException {
        if (context == null || result == null || !result.sourceSha256.matches("[0-9a-f]{64}")) {
            throw new IOException("Razor preview context/source missing");
        }
        File root = new File(context.getFilesDir(), ROOT);
        if (!root.isDirectory() && !root.mkdirs()) {
            throw new IOException("Razor preview directory unavailable");
        }
        File target = new File(root, result.sourceSha256);
        ByteArrayOutputStream maps = new ByteArrayOutputStream();
        ByteArrayOutputStream scenes = new ByteArrayOutputStream();
        StringBuilder index = new StringBuilder();
        for (DuneHackR82cRazorMissionBundle.Mission mission : result.allMissions()) {
            byte[] map = mission.mapBytes();
            byte[] scene = mission.scenarioBytes();
            index.append("slot=").append(mission.house).append(',').append(mission.mission).append(',').append(maps.size()).append(',').append(map.length).append(',').append(mission.mapSha256).append(',').append(scenes.size()).append(',').append(scene.length).append(',').append(mission.scenarioSha256).append(',').append(mission.storedMapSide).append(',').append(mission.scenarioMapWidth).append('x').append(mission.scenarioMapHeight).append('\n');
            maps.write(map, 0, map.length);
            scenes.write(scene, 0, scene.length);
        }
        byte[] mapBank = maps.toByteArray();
        byte[] scenarioBank = scenes.toByteArray();
        String manifest = "RAZOR_MISSION_PREVIEW_V1\nsource_sha256=" + result.sourceSha256 + "\nvariant=" + result.variant + "\ndecoded=" + result.missionsDecoded + "\nblocked=" + result.unsupportedScenarioSlots + "\nmaps_sha256=" + sha256(mapBank) + "\nscenarios_sha256=" + sha256(scenarioBank) + "\nready=false\nno_native_launch=true\n" + index.toString();
        byte[] manifestBytes = manifest.getBytes(StandardCharsets.US_ASCII);
        if (valid(target, mapBank, scenarioBank, manifestBytes)) {
            return "cached";
        }
        File staging = new File(root, result.sourceSha256 + ".tmp." + Long.toHexString(System.nanoTime()));
        if (!staging.mkdir()) {
            throw new IOException("Razor staging directory unavailable");
        }
        try {
            write(new File(staging, MAPS), mapBank);
            write(new File(staging, SCENARIOS), scenarioBank);
            write(new File(staging, MANIFEST), manifestBytes);
            if (!valid(staging, mapBank, scenarioBank, manifestBytes)) {
                throw new IOException("Razor staging bytes corrupted");
            }
            if (target.exists()) {
                delete(target);
            }
            if (!staging.renameTo(target)) {
                throw new IOException("Razor preview commit failed");
            }
            return "stored";
        } finally {
            if (staging.exists()) {
                delete(staging);
            }
        }
    }

    private static boolean valid(File dir, byte[] mapBank, byte[] scenarios, byte[] manifest) {
        try {
            if (!dir.isDirectory()) {
                return false;
            }
            byte[] storedMaps = read(new File(dir, MAPS), mapBank.length);
            byte[] storedScenarios = read(new File(dir, SCENARIOS), scenarios.length);
            byte[] storedManifest = read(new File(dir, MANIFEST), manifest.length);
            if (MessageDigest.isEqual(storedMaps, mapBank) && MessageDigest.isEqual(storedScenarios, scenarios)) {
                return MessageDigest.isEqual(storedManifest, manifest);
            }
            return false;
        } catch (IOException e) {
            return false;
        }
    }

    private static byte[] read(File f, int expected) throws IOException {
        if (!f.isFile() || f.length() != expected || expected < 0 || expected > 3145728) {
            throw new IOException("Razor cache size mismatch");
        }
        byte[] out = new byte[expected];
        FileInputStream in = new FileInputStream(f);
        int p = 0;
        while (p < expected) {
            try {
                int n = in.read(out, p, expected - p);
                if (n <= 0) {
                    throw new IOException("Razor cache truncated");
                }
                p += n;
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
            throw new IOException("Razor cache has trailing data");
        }
        in.close();
        return out;
    }

    private static void write(File f, byte[] b) throws IOException {
        FileOutputStream out = new FileOutputStream(f);
        try {
            out.write(b);
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

    private static void delete(File f) throws IOException {
        if (f.isDirectory()) {
            File[] children = f.listFiles();
            if (children == null) {
                throw new IOException("Razor cache unreadable");
            }
            for (File child : children) {
                delete(child);
            }
        }
        if (!f.delete()) {
            throw new IOException("Razor cache cleanup failed");
        }
    }

    private static String sha256(byte[] data) throws IOException {
        try {
            byte[] bytes = MessageDigest.getInstance("SHA-256").digest(data);
            StringBuilder b = new StringBuilder(64);
            for (byte v : bytes) {
                b.append(Character.forDigit((v >>> 4) & 15, 16));
                b.append(Character.forDigit(v & 15, 16));
            }
            return b.toString().toLowerCase(Locale.US);
        } catch (NoSuchAlgorithmException e) {
            throw new IOException("SHA-256 unavailable", e);
        }
    }
}
