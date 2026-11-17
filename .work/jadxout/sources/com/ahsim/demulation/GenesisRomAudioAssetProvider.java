package com.ahsim.demulation;

import com.ahsim.demulation.RomAudioAssetManifest;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Array;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;

/* loaded from: classes2.dex */
public final class GenesisRomAudioAssetProvider {
    static final int GERMAN_PACK_BYTES = 218882;
    static final int GERMAN_PACK_SEGMENTS = 11;
    private static final int MAX_ROM_BYTES = 16777216;
    private static final int PACK_VERSION = 1;
    private static final int ROM_IMAGE_BYTES = 1048576;
    private static final byte[] MAGIC = {68, 69, 77, 65, 85, 68, 48, 49};
    private static final int[][] SEGMENTS = {new int[]{133236, 134164}, new int[]{436350, 436666}, new int[]{556868, 557348}, new int[]{819552, 1043776}};

    public interface ProgressListener {
        void onProgress(int i, int i2, String str);
    }

    public static final class Result {
        public final List<String> mismatches;
        public final long payloadBytes;
        public final File stagedRoot;
        public final int totalEntries;
        public final int verifiedEntries;

        private Result(int totalEntries, int verifiedEntries, long payloadBytes, List<String> mismatches, File stagedRoot) {
            this.totalEntries = totalEntries;
            this.verifiedEntries = verifiedEntries;
            this.payloadBytes = payloadBytes;
            this.mismatches = Collections.unmodifiableList(new ArrayList(mismatches));
            this.stagedRoot = stagedRoot;
        }

        public boolean allVerified() {
            return this.totalEntries > 0 && this.totalEntries == this.verifiedEntries && this.mismatches.isEmpty();
        }
    }

    private GenesisRomAudioAssetProvider() {
    }

    public static Result extract(InputStream input, long knownRomSize, File stagingRoot, ProgressListener listener) throws IOException {
        return extract(input, knownRomSize, stagingRoot, listener, null);
    }

    public static Result extract(InputStream input, long knownRomSize, File stagingRoot, ProgressListener listener, String profileId) throws IOException {
        if (input == null) {
            throw new IOException("ROM stream is unavailable");
        }
        if (stagingRoot == null) {
            throw new IOException("Audio staging is unavailable");
        }
        if (knownRomSize > 16777216) {
            throw new IOException("ROM is unexpectedly large");
        }
        byte[] rom = readAll(input, knownRomSize);
        if (rom.length < ROM_IMAGE_BYTES) {
            throw new IOException("ROM is too small for original audio banks");
        }
        byte[] pack = buildPack(rom, profileId);
        RomAudioAssetManifest.Entry expected = RomAudioAssetManifest.entries().get(0);
        ArrayList<String> mismatches = new ArrayList<>();
        boolean match = RomOfficialRegionAssetVariants.matchesExtracted(profileId, expected.relativePath, pack, expected.length, expected.sha256);
        if (!match) {
            mismatches.add(expected.relativePath);
        }
        deleteRecursively(stagingRoot);
        if (stagingRoot.mkdirs() || stagingRoot.isDirectory()) {
            try {
                File out = safeChild(stagingRoot, expected.relativePath);
                File parent = out.getParentFile();
                if (parent != null && !parent.mkdirs() && !parent.isDirectory()) {
                    throw new IOException("Could not create audio staging directory");
                }
                FileOutputStream stream = new FileOutputStream(out);
                try {
                    stream.write(pack);
                    stream.getFD().sync();
                    stream.close();
                    if (listener != null) {
                        listener.onProgress(1, 1, expected.relativePath);
                    }
                    if (!match) {
                        deleteRecursively(stagingRoot);
                    }
                    int i = 1;
                    if (!match) {
                        i = 0;
                    }
                    return new Result(1, i, pack.length, mismatches, stagingRoot);
                } finally {
                }
            } catch (IOException | RuntimeException e) {
                deleteRecursively(stagingRoot);
                throw e;
            }
        } else {
            throw new IOException("Could not create audio staging");
        }
    }

    static byte[] buildPack(byte[] rom) throws IOException {
        return buildPack(rom, null);
    }

    static byte[] buildPack(byte[] rom, String profileId) throws IOException {
        if (rom == null || rom.length < ROM_IMAGE_BYTES) {
            throw new IOException("ROM is truncated");
        }
        if (GermanRomAddressMap.isExactGerman(rom)) {
            return buildGermanPack(rom);
        }
        int[][] slices = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, SEGMENTS.length, 3);
        for (int i = 0; i < SEGMENTS.length; i++) {
            slices[i][0] = SEGMENTS[i][0];
            slices[i][1] = SEGMENTS[i][0];
            slices[i][2] = SEGMENTS[i][1];
        }
        return buildPackFromSlices(rom, slices);
    }

    private static byte[] buildGermanPack(byte[] rom) throws IOException {
        int titleDtbl = GermanRomAddressMap.fixed(rom, 819552);
        int titleStbl = GermanRomAddressMap.fixed(rom, 850288);
        int titleEtbl = GermanRomAddressMap.fixed(rom, 852561);
        int titlePtbl = GermanRomAddressMap.fixed(rom, 852654);
        int gameplayDtbl = GermanRomAddressMap.fixed(rom, 853695);
        int gameplayStbl = GermanRomAddressMap.fixed(rom, 1008483);
        int gameplayEtbl = GermanRomAddressMap.fixed(rom, 1040773);
        int gameplayPtbl = GermanRomAddressMap.fixed(rom, 1041078);
        int gemsEnd = GermanRomAddressMap.fixed(rom, 1043776);
        int names = GermanRomAddressMap.fixed(rom, 133236);
        int namesEnd = GermanRomAddressMap.fixed(rom, 134164);
        int direct = GermanRomAddressMap.fixed(rom, 436350);
        int directEnd = GermanRomAddressMap.fixed(rom, 436666);
        int options = GermanRomAddressMap.fixed(rom, 556868);
        int optionsEnd = GermanRomAddressMap.fixed(rom, 557348);
        int[][] slices = {new int[]{names, names, namesEnd}, new int[]{436350, direct, directEnd}, new int[]{556868, options, optionsEnd}, new int[]{819552, titleDtbl, titleStbl}, new int[]{850288, titleStbl, titleEtbl}, new int[]{852561, titleEtbl, titlePtbl}, new int[]{852654, titlePtbl, gameplayDtbl}, new int[]{853695, gameplayDtbl, gameplayStbl}, new int[]{1008483, gameplayStbl, gameplayEtbl}, new int[]{1040773, gameplayEtbl, gameplayPtbl}, new int[]{1041078, gameplayPtbl, gemsEnd}};
        byte[] pack = buildPackFromSlices(rom, slices);
        if (pack.length != GERMAN_PACK_BYTES) {
            throw new IOException("German audio pack layout size mismatch: " + pack.length);
        }
        return pack;
    }

    private static byte[] buildPackFromSlices(byte[] rom, int[][] slices) throws IOException {
        int payload = 0;
        for (int[] slice : slices) {
            if (slice == null || slice.length != 3 || slice[0] < 0 || slice[1] < 0 || slice[2] < slice[1] || slice[2] > rom.length) {
                throw new IOException("Audio source slice is outside ROM");
            }
            int len = slice[2] - slice[1];
            if (slice[0] > ROM_IMAGE_BYTES - len) {
                throw new IOException("Audio virtual slice is outside ROM address space");
            }
            payload += len;
        }
        ByteArrayOutputStream out = new ByteArrayOutputStream((slices.length * 8) + 20 + payload);
        out.write(MAGIC);
        writeBe32(out, 1);
        writeBe32(out, ROM_IMAGE_BYTES);
        writeBe32(out, slices.length);
        for (int[] slice2 : slices) {
            writeBe32(out, slice2[0]);
            writeBe32(out, slice2[2] - slice2[1]);
        }
        for (int[] slice3 : slices) {
            out.write(rom, slice3[1], slice3[2] - slice3[1]);
        }
        return out.toByteArray();
    }

    private static byte[] readAll(InputStream input, long knownSize) throws IOException {
        int initial = (knownSize <= 0 || knownSize > 16777216) ? ROM_IMAGE_BYTES : (int) knownSize;
        ByteArrayOutputStream out = new ByteArrayOutputStream(initial);
        byte[] buffer = new byte[8192];
        int total = 0;
        while (true) {
            int n = input.read(buffer);
            if (n >= 0) {
                if (n != 0) {
                    total += n;
                    if (total > 16777216) {
                        throw new IOException("ROM is unexpectedly large");
                    }
                    out.write(buffer, 0, n);
                }
            } else {
                return out.toByteArray();
            }
        }
    }

    private static void writeBe32(ByteArrayOutputStream out, int value) {
        out.write((value >>> 24) & 255);
        out.write((value >>> 16) & 255);
        out.write((value >>> 8) & 255);
        out.write(value & 255);
    }

    private static File safeChild(File root, String relative) throws IOException {
        File child = new File(root, relative);
        String rp = root.getCanonicalPath();
        String cp = child.getCanonicalPath();
        if (!cp.startsWith(rp + File.separator)) {
            throw new IOException("Unsafe audio asset path");
        }
        return child;
    }

    public static void deleteRecursively(File file) throws IOException {
        File[] children;
        if (file == null || !file.exists()) {
            return;
        }
        if (file.isDirectory() && (children = file.listFiles()) != null) {
            for (File child : children) {
                deleteRecursively(child);
            }
        }
        if (!file.delete() && file.exists()) {
            throw new IOException("Could not delete " + file);
        }
    }

    private static String sha256(byte[] data) throws IOException {
        try {
            MessageDigest digest = MessageDigest.getInstance("SHA-256");
            byte[] hash = digest.digest(data);
            StringBuilder out = new StringBuilder(hash.length * 2);
            for (byte b : hash) {
                out.append(String.format(Locale.US, "%02x", Integer.valueOf(b & 255)));
            }
            return out.toString();
        } catch (NoSuchAlgorithmException e) {
            throw new IOException("SHA-256 is unavailable", e);
        }
    }
}
