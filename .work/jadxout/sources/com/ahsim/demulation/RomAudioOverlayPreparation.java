package com.ahsim.demulation;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;

/* loaded from: classes2.dex */
final class RomAudioOverlayPreparation {
    private static final int LIMIT_PACK = 1048576;
    private static final byte[] MAGIC = {68, 77, 65, 85, 68, 50, 50, 33};
    static final String STORAGE_DIR = "optional_audio_overlay_v1";
    static final String STORAGE_FILE = "candidate.aud";
    private static final int VERSION = 1;

    static final class Domain {
        final boolean changed;
        final long differingAddresses;
        final int end;
        final String key;
        final boolean playbackRelevant;
        final int start;

        Domain(String key, int start, int end, boolean playbackRelevant, long differingAddresses) {
            this.key = key;
            this.start = start;
            this.end = end;
            this.playbackRelevant = playbackRelevant;
            this.differingAddresses = differingAddresses;
            this.changed = differingAddresses != 0;
        }
    }

    static final class Audit {
        final int changedDomains;
        final List<Domain> domains;
        final boolean metadataOnly;
        final boolean playbackDiffers;
        final int sourcePackBytes;

        Audit(List<Domain> domains, int sourcePackBytes) {
            this.domains = Collections.unmodifiableList(new ArrayList(domains));
            this.sourcePackBytes = sourcePackBytes;
            int changed = 0;
            boolean playable = false;
            for (Domain d : domains) {
                changed = d.changed ? changed + 1 : changed;
                if (d.changed && d.playbackRelevant) {
                    playable = true;
                }
            }
            this.changedDomains = changed;
            this.playbackDiffers = playable;
            this.metadataOnly = changed > 0 && !playable;
        }
    }

    private RomAudioOverlayPreparation() {
    }

    static Audit compare(byte[] basePack, byte[] candidatePack) throws IOException {
        GenesisAudioSource base = GenesisAudioSource.fromPack(basePack);
        GenesisAudioSource candidate = GenesisAudioSource.fromPack(candidatePack);
        int[] anchors = {436350, 556868, 819552, 853695};
        for (int at : anchors) {
            if (!base.contains(at, 1) || !candidate.contains(at, 1)) {
                throw new IOException("Audio source is missing canonical bank at 0x" + Integer.toHexString(at));
            }
        }
        List<Domain> parts = new ArrayList<>();
        parts.add(diff("option_names", base, candidate, 133236, 134164, false));
        parts.add(diff("command_tables", base, candidate, 436350, 436666, true));
        parts.add(diff("option_selectors", base, candidate, 556868, 557348, false));
        parts.add(diff("title_gems", base, candidate, 819552, 853695, true));
        parts.add(diff("gameplay_gems", base, candidate, 853695, 1043776, true));
        return new Audit(parts, candidatePack.length);
    }

    private static Domain diff(String key, GenesisAudioSource a, GenesisAudioSource b, int start, int end, boolean relevant) {
        long count = 0;
        for (int at = start; at < end; at++) {
            boolean existsA = a.contains(at, 1);
            boolean existsB = b.contains(at, 1);
            if (existsA != existsB || (existsA && a.m1u8(at) != b.m1u8(at))) {
                count++;
            }
        }
        return new Domain(key, start, end, relevant, count);
    }

    static boolean stage(File root, byte[] pack, Audit audit, String baseSha, String modSha) throws IOException {
        boolean exists;
        verifyFingerprint(baseSha);
        verifyFingerprint(modSha);
        if (root == null || audit == null) {
            throw new IOException("No audio staging root/audit");
        }
        if (!root.isDirectory() && !root.mkdirs()) {
            throw new IOException("Cannot create audio staging root");
        }
        File temporary = new File(root, STORAGE_FILE);
        if (!audit.playbackDiffers) {
            if (exists && !temporary.delete()) {
                throw new IOException("Cannot clear previous audio candidate");
            }
            return false;
        }
        if (pack == null || pack.length > LIMIT_PACK || pack.length != audit.sourcePackBytes) {
            throw new IOException("Invalid candidate pack size");
        }
        GenesisAudioSource.fromPack(pack);
        byte[] header = makeHeader(baseSha, modSha, pack);
        temporary = new File(root, "candidate.aud.new");
        try {
            FileOutputStream out = new FileOutputStream(temporary);
            try {
                out.write(header);
                out.write(pack);
                out.getFD().sync();
                out.close();
                byte[] check = readCandidateFile(temporary, baseSha, modSha);
                if (!MessageDigest.isEqual(check, pack)) {
                    throw new IOException("Staged audio pack did not survive write");
                }
                if (!temporary.renameTo(temporary)) {
                    throw new IOException("Could not atomically publish staged audio pack");
                }
                readCandidateFile(temporary, baseSha, modSha);
                if (temporary.exists()) {
                    temporary.delete();
                    return true;
                }
                return true;
            } finally {
            }
        } finally {
            if (temporary.exists()) {
                temporary.delete();
            }
        }
    }

    static byte[] readCandidate(File root, String baseSha, String modSha) throws IOException {
        if (root == null) {
            throw new IOException("Audio candidate root absent");
        }
        return readCandidateFile(new File(root, STORAGE_FILE), baseSha, modSha);
    }

    private static byte[] makeHeader(String baseSha, String modSha, byte[] pack) throws IOException {
        ByteArrayOutputStream out = new ByteArrayOutputStream(208);
        out.write(MAGIC);
        write32(out, 1);
        ascii(out, baseSha.toLowerCase(Locale.US));
        ascii(out, modSha.toLowerCase(Locale.US));
        write32(out, pack.length);
        ascii(out, sha256(pack));
        return out.toByteArray();
    }

    private static byte[] readCandidateFile(File file, String baseSha, String modSha) throws IOException {
        verifyFingerprint(baseSha);
        verifyFingerprint(modSha);
        if (!file.isFile() || file.length() < 208 || file.length() > 1048784) {
            throw new IOException("Staged audio pack is missing or invalid");
        }
        byte[] data = new byte[(int) file.length()];
        FileInputStream in = new FileInputStream(file);
        int done = 0;
        while (done < data.length) {
            try {
                int got = in.read(data, done, data.length - done);
                if (got < 0) {
                    throw new IOException("Staged audio pack truncated");
                }
                done += got;
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
            throw new IOException("Staged audio pack changed during reading");
        }
        in.close();
        for (int i = 0; i < MAGIC.length; i++) {
            if (data[i] != MAGIC[i]) {
                throw new IOException("Staged audio format mismatch");
            }
        }
        if (read32(data, 8) != 1) {
            throw new IOException("Staged audio format version mismatch");
        }
        if (!baseSha.equalsIgnoreCase(new String(data, 12, 64, StandardCharsets.US_ASCII)) || !modSha.equalsIgnoreCase(new String(data, 76, 64, StandardCharsets.US_ASCII))) {
            throw new IOException("Staged audio source no longer matches selected ROMs");
        }
        int len = read32(data, 140);
        if (len <= 0 || len > LIMIT_PACK || len != data.length - 208) {
            throw new IOException("Staged audio payload size mismatch");
        }
        byte[] pack = new byte[len];
        System.arraycopy(data, 208, pack, 0, len);
        String actual = sha256(pack);
        String expected = new String(data, 144, 64, StandardCharsets.US_ASCII);
        if (!actual.equalsIgnoreCase(expected)) {
            throw new IOException("Staged audio SHA-256 mismatch");
        }
        GenesisAudioSource.fromPack(pack);
        return pack;
    }

    private static void verifyFingerprint(String sha) throws IOException {
        if (sha == null || !sha.matches("[0-9a-fA-F]{64}")) {
            throw new IOException("Audio source fingerprint is unavailable");
        }
    }

    private static void ascii(ByteArrayOutputStream out, String value) throws IOException {
        out.write(value.getBytes(StandardCharsets.US_ASCII));
    }

    private static void write32(ByteArrayOutputStream out, int value) {
        out.write(value >>> 24);
        out.write(value >>> 16);
        out.write(value >>> 8);
        out.write(value);
    }

    private static int read32(byte[] v, int pos) {
        return ((v[pos] & 255) << 24) | ((v[pos + 1] & 255) << 16) | ((v[pos + 2] & 255) << 8) | (v[pos + 3] & 255);
    }

    private static String sha256(byte[] bytes) throws IOException {
        try {
            byte[] data = MessageDigest.getInstance("SHA-256").digest(bytes);
            StringBuilder hex = new StringBuilder(data.length * 2);
            for (byte b : data) {
                hex.append(String.format(Locale.US, "%02x", Integer.valueOf(b & 255)));
            }
            return hex.toString();
        } catch (NoSuchAlgorithmException ex) {
            throw new IOException("SHA-256 unavailable", ex);
        }
    }
}
