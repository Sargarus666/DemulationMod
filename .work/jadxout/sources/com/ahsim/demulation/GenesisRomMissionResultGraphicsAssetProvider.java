package com.ahsim.demulation;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;

/* loaded from: classes2.dex */
public final class GenesisRomMissionResultGraphicsAssetProvider {
    private static final int[] BACKDROP_PTRS = {679652, 680592, 681370};
    private static final int COMMON_PTRS = 667264;
    private static final int FONT = 330804;
    private static final int MAP_BYTES = 3584;
    private static final int MAX_ROM_BYTES = 16777216;
    private static final int OVERLAY = 679310;
    private static final int PALETTE = 679182;
    private static final int PASSWORD_OVERLAY = 679524;

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

    private static final class Asset {
        final byte[] data;
        final String path;

        Asset(String path, byte[] data) {
            this.path = path;
            this.data = data;
        }
    }

    private GenesisRomMissionResultGraphicsAssetProvider() {
    }

    public static Result extract(InputStream input, long knownRomSize, File stagingRoot, ProgressListener listener) throws IOException {
        return extract(input, knownRomSize, stagingRoot, listener, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x00ba A[Catch: IOException | RuntimeException -> 0x00f6, IOException -> 0x00f8, TRY_LEAVE, TryCatch #4 {IOException | RuntimeException -> 0x00f6, blocks: (B:17:0x004e, B:19:0x0054, B:21:0x0064, B:24:0x0073, B:25:0x007b, B:27:0x008e, B:29:0x0094, B:33:0x009b, B:34:0x00a2, B:35:0x00a3, B:39:0x00b5, B:41:0x00ba, B:54:0x00d4, B:53:0x00d1, B:55:0x0076, B:49:0x00cc, B:38:0x00a9), top: B:16:0x004e, inners: #0, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00c5 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.ahsim.demulation.GenesisRomMissionResultGraphicsAssetProvider.Result extract(java.io.InputStream r17, long r18, java.io.File r20, com.ahsim.demulation.GenesisRomMissionResultGraphicsAssetProvider.ProgressListener r21, java.lang.String r22) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 285
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ahsim.demulation.GenesisRomMissionResultGraphicsAssetProvider.extract(java.io.InputStream, long, java.io.File, com.ahsim.demulation.GenesisRomMissionResultGraphicsAssetProvider$ProgressListener, java.lang.String):com.ahsim.demulation.GenesisRomMissionResultGraphicsAssetProvider$Result");
    }

    private static List<Asset> buildAssets(byte[] rom, String profileId) throws IOException {
        ArrayList<Asset> out = new ArrayList<>();
        out.add(new Asset("mission_result/palette.bin", copy(rom, GermanRomAddressMap.fixed(rom, PALETTE), 128)));
        byte[] scratch = new byte[65536];
        byte[] common = new byte[28672];
        for (int i = 0; i < 7; i++) {
            int table = GermanRomAddressMap.fixed(rom, COMMON_PTRS);
            int ptr = be32(rom, (i * 4) + table);
            int produced = decompressInto(rom, ptr, scratch);
            if (produced <= 0) {
                throw new IOException("Mission-result common pattern decode is empty");
            }
            System.arraycopy(scratch, 0, common, i * DuneHackR82ScenarioRecordDecoder.MAX_RECORDS, DuneHackR82ScenarioRecordDecoder.MAX_RECORDS);
        }
        out.add(new Asset("mission_result/common_patterns.bin", common));
        out.add(new Asset("mission_result/font.bin", copy(rom, GermanRomAddressMap.fixed(rom, FONT), DuneHackR82ScenarioRecordDecoder.MAX_RECORDS)));
        for (int i2 = 0; i2 < BACKDROP_PTRS.length; i2++) {
            byte[] map = new byte[65536];
            int produced2 = decompressInto(rom, GermanRomAddressMap.fixed(rom, BACKDROP_PTRS[i2]), map);
            if (produced2 < MAP_BYTES) {
                throw new IOException("Mission-result backdrop decode is short");
            }
            out.add(new Asset("mission_result/backdrop" + i2 + ".map", copy(map, 0, MAP_BYTES)));
        }
        byte[] overlay = new byte[65536];
        if (decompressInto(rom, GermanRomAddressMap.fixed(rom, OVERLAY), overlay) < MAP_BYTES) {
            throw new IOException("Mission-result overlay decode is short");
        }
        out.add(new Asset("mission_result/overlay.map", copy(overlay, 0, MAP_BYTES)));
        byte[] password = new byte[65536];
        int passwordOverlay = "translation_ru_shedevr_lipetsk_usa".equals(profileId) ? 758546 : GermanRomAddressMap.fixed(rom, PASSWORD_OVERLAY);
        int passwordProduced = decompressInto(rom, passwordOverlay, password);
        if (passwordProduced < MAP_BYTES) {
            throw new IOException("Mission-result password overlay decode is short");
        }
        for (int o = 1792; o < MAP_BYTES; o += 2) {
            if ((password[o] & 255) != 32 || (password[o + 1] & 255) != 0) {
                throw new IOException("Mission-result password lower page changed");
            }
        }
        out.add(new Asset("mission_result/password_overlay.map", copy(password, 0, 1792)));
        return out;
    }

    private static void verifyAnchors(byte[] rom) throws IOException {
        checkRange(rom, GermanRomAddressMap.fixed(rom, 684032), 1);
        int table = GermanRomAddressMap.fixed(rom, COMMON_PTRS);
        if (be32(rom, table) != GermanRomAddressMap.fixed(rom, 667292) || be32(rom, table + 4) != GermanRomAddressMap.fixed(rom, 669300) || be32(rom, table + 8) != GermanRomAddressMap.fixed(rom, 671534) || be32(rom, table + 24) != GermanRomAddressMap.fixed(rom, 678942)) {
            throw new IOException("Mission-result common graphics table changed");
        }
    }

    private static byte[] readAll(InputStream input, long knownSize) throws IOException {
        int initial = (knownSize <= 0 || knownSize > 16777216) ? 1048576 : (int) knownSize;
        ByteArrayOutputStream out = new ByteArrayOutputStream(initial);
        byte[] buffer = new byte[RazorVramPatternLoader.METATILE_BANK_BYTES];
        int total = 0;
        while (true) {
            int count = input.read(buffer);
            if (count != -1) {
                total += count;
                if (total > 16777216) {
                    throw new IOException("ROM is unexpectedly large");
                }
                out.write(buffer, 0, count);
            } else {
                return out.toByteArray();
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:54:0x00a0, code lost:
    
        throw new java.io.IOException("Mission-result absolute-copy range");
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0065, code lost:
    
        throw new java.io.IOException("Mission-result short-copy range");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int decompressInto(byte[] r9, int r10, byte[] r11) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 281
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ahsim.demulation.GenesisRomMissionResultGraphicsAssetProvider.decompressInto(byte[], int, byte[]):int");
    }

    private static File safeChild(File root, String relative) throws IOException {
        File file = new File(root, relative).getCanonicalFile();
        String rootPath = root.getCanonicalPath();
        String path = file.getCanonicalPath();
        if (!path.equals(rootPath) && !path.startsWith(rootPath + File.separator)) {
            throw new IOException("Mission-result graphics asset escaped staging root");
        }
        return file;
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

    private static byte[] copy(byte[] source, int offset, int length) throws IOException {
        checkRange(source, offset, length);
        byte[] out = new byte[length];
        System.arraycopy(source, offset, out, 0, length);
        return out;
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
            throw new IOException("SHA-256 unavailable", e);
        }
    }

    private static int be32(byte[] b, int o) throws IOException {
        checkRange(b, o, 4);
        return ((b[o] & 255) << 24) | ((b[o + 1] & 255) << 16) | ((b[o + 2] & 255) << 8) | (b[o + 3] & 255);
    }

    private static void checkRange(byte[] b, int o, int n) throws IOException {
        if (o < 0 || n < 0 || o > b.length - n) {
            throw new IOException("Mission-result ROM range");
        }
    }

    private static void ensureOutput(byte[] out, int dst, int n) throws IOException {
        if (dst < 0 || n < 0 || dst > out.length - n) {
            throw new IOException("Mission-result output overrun");
        }
    }
}
