package com.ahsim.demulation;

import com.ahsim.demulation.RomTutorialAssetManifest;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* loaded from: classes2.dex */
public final class GenesisRomTutorialAssetProvider {
    private static final int CURSOR_DESCRIPTOR_TABLE = 78362;
    private static final int CURSOR_PATTERN_TABLE = 79990;
    private static final int DYNAMIC00_PATTERNS = 270166;
    private static final int MAX_ROM_BYTES = 16777216;
    private static final int PATTERN_BYTES = 32;
    private static final int SCENE_TABLE = 268002;
    private static final int TEXT_DESCRIPTOR = 273232;
    private static final int TEXT_FONT = 273666;
    private static final int TEXT_FONT_BYTES = 5408;

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

    private static final class LogicalAsset {
        final byte[] data;
        final String path;

        LogicalAsset(String path, byte[] data) {
            this.path = path;
            this.data = data;
        }
    }

    private GenesisRomTutorialAssetProvider() {
    }

    public static Result extract(InputStream input, long knownRomSize, File stagingRoot, ProgressListener listener) throws IOException {
        return extract(input, knownRomSize, stagingRoot, listener, null);
    }

    public static Result extract(InputStream input, long knownRomSize, File stagingRoot, ProgressListener listener, String profileId) throws IOException {
        int verified;
        if (input == null) {
            throw new IOException("ROM stream is unavailable");
        }
        if (stagingRoot == null) {
            throw new IOException("Tutorial staging directory is unavailable");
        }
        if (knownRomSize > 16777216) {
            throw new IOException("ROM is unexpectedly large");
        }
        byte[] rom = readAll(input, knownRomSize);
        if (rom.length < 279296) {
            throw new IOException("ROM is too small for tutorial resources");
        }
        List<LogicalAsset> assets = decodeAssets(rom, profileId);
        List<RomTutorialAssetManifest.Entry> manifest = RomTutorialAssetManifest.entries();
        if (assets.size() != manifest.size()) {
            throw new IOException("Tutorial manifest/generator count mismatch");
        }
        deleteRecursively(stagingRoot);
        if (!stagingRoot.mkdirs() && !stagingRoot.isDirectory()) {
            throw new IOException("Could not create tutorial staging directory");
        }
        List<String> mismatches = new ArrayList<>();
        int i = 0;
        int verified2 = 0;
        while (true) {
            try {
                int verified3 = assets.size();
                if (i < verified3) {
                    LogicalAsset asset = assets.get(i);
                    RomTutorialAssetManifest.Entry expected = manifest.get(i);
                    if (!expected.relativePath.equals(asset.path)) {
                        throw new IOException("Tutorial manifest order mismatch at " + i);
                    }
                    boolean match = RomOfficialRegionAssetVariants.matchesExtracted(profileId, asset.path, asset.data, expected.length, expected.sha256);
                    if (match) {
                        verified2++;
                    } else {
                        mismatches.add(asset.path);
                    }
                    try {
                        File out = safeChild(stagingRoot, asset.path);
                        File parent = out.getParentFile();
                        if (parent != null && !parent.mkdirs() && !parent.isDirectory()) {
                            throw new IOException("Could not create tutorial asset directory");
                        }
                        FileOutputStream stream = new FileOutputStream(out);
                        try {
                            stream.write(asset.data);
                            stream.getFD().sync();
                            stream.close();
                            if (listener != null) {
                                verified = verified2;
                                try {
                                    listener.onProgress(i + 1, assets.size(), asset.path);
                                } catch (IOException | RuntimeException e) {
                                    e = e;
                                    deleteRecursively(stagingRoot);
                                    throw e;
                                }
                            } else {
                                verified = verified2;
                            }
                            i++;
                            verified2 = verified;
                        } catch (Throwable th) {
                            verified = verified2;
                            try {
                                stream.close();
                                throw th;
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                                throw th;
                            }
                        }
                    } catch (IOException | RuntimeException e2) {
                        e = e2;
                    }
                } else {
                    if (!mismatches.isEmpty()) {
                        deleteRecursively(stagingRoot);
                    }
                    return new Result(manifest.size(), verified2, RomTutorialAssetManifest.payloadBytes(), mismatches, stagingRoot);
                }
            } catch (IOException e3) {
                e = e3;
            } catch (RuntimeException e4) {
                e = e4;
            }
        }
    }

    private static List<LogicalAsset> decodeAssets(byte[] rom, String profileId) throws IOException {
        int i;
        int i2;
        verifyAnchors(rom, profileId);
        List<LogicalAsset> out = new ArrayList<>();
        ByteArrayOutputStream sceneIndexBytes = new ByteArrayOutputStream();
        DataOutputStream sceneIndex = new DataOutputStream(sceneIndexBytes);
        sceneIndex.write(new byte[]{68, 84, 83, 67});
        sceneIndex.writeShort(1);
        sceneIndex.writeShort(12);
        for (int scene = 0; scene < 12; scene++) {
            int entry = GermanRomAddressMap.fixed(rom, SCENE_TABLE) + (scene * 12);
            int patternTable = be32(rom, entry);
            int plane0 = be32(rom, entry + 4);
            int plane1 = be32(rom, entry + 8);
            sceneIndex.writeByte(scene);
            int i3 = 0;
            if (patternTable != 0) {
                i = 1;
            } else {
                i = 0;
            }
            sceneIndex.writeByte(i);
            if (plane0 != 0) {
                i2 = 1;
            } else {
                i2 = 0;
            }
            sceneIndex.writeByte(i2);
            if (plane1 != 0) {
                i3 = 1;
            }
            sceneIndex.writeByte(i3);
            if (patternTable != 0) {
                out.add(new LogicalAsset(String.format("tutorial/scenes/scene%02d_patterns.bin", Integer.valueOf(scene)), loadPatternTable(rom, patternTable)));
            }
            if (plane0 != 0) {
                out.add(new LogicalAsset(String.format("tutorial/scenes/scene%02d_plane0.delta", Integer.valueOf(scene)), decompressExact(rom, plane0, 65536)));
            }
            if (plane1 != 0) {
                out.add(new LogicalAsset(String.format("tutorial/scenes/scene%02d_plane1.delta", Integer.valueOf(scene)), decompressExact(rom, plane1, 65536)));
            }
        }
        out.add(new LogicalAsset("tutorial/scenes/index.bin", sceneIndexBytes.toByteArray()));
        int[] paletteScenes = {0, 1, 3, 4, 6, 9, 11};
        int[] palettePointers = {198652, 209332, 224754, 233846, 248200, 259310, 267006};
        for (int i4 = 0; i4 < paletteScenes.length; i4++) {
            out.add(new LogicalAsset(String.format("tutorial/palettes/scene%02d.bin", Integer.valueOf(paletteScenes[i4])), copy(rom, GermanRomAddressMap.fixed(rom, palettePointers[i4]), 128)));
        }
        out.add(new LogicalAsset("tutorial/dynamic/dynamic00_patterns.bin", copy(rom, GermanRomAddressMap.fixed(rom, DYNAMIC00_PATTERNS), 128)));
        out.add(new LogicalAsset("tutorial/cursor/patterns.bin", loadPatternTable(rom, GermanRomAddressMap.fixed(rom, CURSOR_PATTERN_TABLE))));
        out.add(new LogicalAsset("tutorial/cursor/layouts.bin", buildCursorLayouts(rom)));
        int textDescriptor = GermanRomAddressMap.fixed(rom, TEXT_DESCRIPTOR);
        int textPieces = be16(rom, textDescriptor) + 1;
        out.add(new LogicalAsset("tutorial/text/layout.bin", copy(rom, textDescriptor, (textPieces * 12) + 2)));
        out.add(new LogicalAsset("tutorial/text/font.bin", copy(rom, GermanRomAddressMap.fixed(rom, TEXT_FONT), TEXT_FONT_BYTES)));
        return out;
    }

    private static byte[] buildNormalizedScript(byte[] rom, int start) throws IOException {
        int p;
        byte[] payload;
        int p2;
        ArrayList<Integer> ops = new ArrayList<>();
        ArrayList<byte[]> payloads = new ArrayList<>();
        int p3 = start;
        while (true) {
            int op = be16(rom, p3);
            int p4 = p3 + 2;
            if (op == 0) {
                ops.add(0);
                payloads.add(new byte[0]);
                ByteArrayOutputStream bytes = new ByteArrayOutputStream();
                DataOutputStream out = new DataOutputStream(bytes);
                out.write(new byte[]{68, 84, 82, 83});
                out.writeShort(1);
                out.writeShort(ops.size());
                for (int i = 0; i < ops.size(); i++) {
                    out.writeShort(ops.get(i).intValue());
                    out.writeShort(payloads.get(i).length);
                    out.write(payloads.get(i));
                }
                return bytes.toByteArray();
            }
            int arg = argumentBytes(op);
            if (op == 48) {
                while (true) {
                    checkRange(rom, p4, 1);
                    p2 = p4 + 1;
                    if (rom[p4] == 0) {
                        break;
                    }
                    p4 = p2;
                }
                payload = Arrays.copyOfRange(rom, p4, p2 - 1);
                p = (p2 + 1) & (-2);
            } else {
                if (arg < 0) {
                    throw new IOException("Unsupported tutorial opcode " + Integer.toHexString(op));
                }
                byte[] payload2 = copy(rom, p4, arg);
                p = p4 + arg;
                payload = payload2;
            }
            if (op == 16) {
                int pointer = be32(payload, 0);
                int scene = paletteSceneForPointer(rom, pointer);
                if (scene < 0) {
                    throw new IOException("Unknown tutorial palette pointer " + Integer.toHexString(pointer));
                }
                payload = new byte[4];
                put32(payload, 0, 1346456576 | scene);
            } else if (op == 44) {
                int pointer2 = be32(payload, 0);
                if (pointer2 != GermanRomAddressMap.fixed(rom, DYNAMIC00_PATTERNS)) {
                    throw new IOException("Unknown tutorial dynamic-pattern pointer " + Integer.toHexString(pointer2));
                }
                payload = new byte[4];
                put32(payload, 0, 1146703360);
            } else if (op == 12) {
                throw new IOException("Tutorial absolute script jump requires normalization");
            }
            ops.add(Integer.valueOf(op));
            payloads.add(payload);
            p3 = p;
        }
    }

    private static int argumentBytes(int op) {
        switch (op) {
        }
        return 4;
    }

    private static int paletteSceneForPointer(byte[] rom, int pointer) throws IOException {
        int[] canonical = {198652, 209332, 224754, 233846, 248200, 259310, 267006};
        int[] scenes = {0, 1, 3, 4, 6, 9, 11};
        for (int i = 0; i < canonical.length; i++) {
            if (pointer == GermanRomAddressMap.fixed(rom, canonical[i])) {
                return scenes[i];
            }
        }
        return -1;
    }

    private static byte[] buildCursorLayouts(byte[] rom) throws IOException {
        ByteArrayOutputStream bytes = new ByteArrayOutputStream();
        DataOutputStream out = new DataOutputStream(bytes);
        out.write(new byte[]{68, 67, 85, 82});
        out.writeShort(1);
        out.writeShort(6);
        for (int type = 0; type < 6; type++) {
            int descriptor = be32(rom, GermanRomAddressMap.fixed(rom, CURSOR_DESCRIPTOR_TABLE) + (type * 8) + 4);
            int length = ((be16(rom, descriptor) + 1) * 12) + 2;
            out.writeShort(length);
            out.write(copy(rom, descriptor, length));
        }
        return bytes.toByteArray();
    }

    private static byte[] loadPatternTable(byte[] rom, int tableOffset) throws IOException {
        int p = tableOffset;
        int bytes = 0;
        int guard = 0;
        while (true) {
            guard++;
            if (guard > 256) {
                throw new IOException("Tutorial pattern table guard");
            }
            int flags = be16(rom, p);
            if (flags != 0) {
                bytes += (flags & 32767) * 32;
                p += 6;
            } else {
                byte[] out = new byte[bytes];
                byte[] scratch = new byte[65536];
                int p2 = tableOffset;
                int dst = 0;
                while (true) {
                    int flags2 = be16(rom, p2);
                    if (flags2 != 0) {
                        int pointer = be32(rom, p2 + 2);
                        p2 += 6;
                        int n = (flags2 & 32767) * 32;
                        if ((32768 & flags2) != 0) {
                            int produced = decompressInto(rom, pointer, scratch);
                            if (produced <= 0) {
                                throw new IOException("Tutorial pattern decode empty");
                            }
                            System.arraycopy(scratch, 0, out, dst, n);
                        } else {
                            checkRange(rom, pointer, n);
                            System.arraycopy(rom, pointer, out, dst, n);
                        }
                        dst += n;
                    } else {
                        return out;
                    }
                }
            }
        }
    }

    private static byte[] decompressExact(byte[] rom, int source, int maxOutput) throws IOException {
        byte[] scratch = new byte[maxOutput];
        int n = decompressInto(rom, source, scratch);
        return Arrays.copyOf(scratch, n);
    }

    /* JADX WARN: Code restructure failed: missing block: B:54:0x00a0, code lost:
    
        throw new java.io.IOException("Tutorial absolute-copy range");
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0065, code lost:
    
        throw new java.io.IOException("Tutorial short-copy range");
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
        throw new UnsupportedOperationException("Method not decompiled: com.ahsim.demulation.GenesisRomTutorialAssetProvider.decompressInto(byte[], int, byte[]):int");
    }

    private static void verifyAnchors(byte[] rom, String profileId) throws IOException {
        boolean russian = "translation_ru_shedevr_lipetsk_usa".equals(profileId);
        int sceneTable = GermanRomAddressMap.fixed(rom, SCENE_TABLE);
        int scene00Plane0 = russian ? 206034 : 205938;
        int scene11Plane0 = russian ? 267746 : 267724;
        int expectedScene0Pattern = GermanRomAddressMap.fixed(rom, 198780);
        int expectedScene0Plane0 = GermanRomAddressMap.fixed(rom, scene00Plane0);
        int expectedScene0Plane1 = GermanRomAddressMap.fixed(rom, 208478);
        int expectedScene11Plane0 = GermanRomAddressMap.fixed(rom, scene11Plane0);
        if (be32(rom, sceneTable) == expectedScene0Pattern && be32(rom, sceneTable + 4) == expectedScene0Plane0) {
            if (be32(rom, sceneTable + 8) == expectedScene0Plane1 && be32(rom, sceneTable + DuneHackR82cRazorCombatAudit.DAMAGE_WORDS + 4) == expectedScene11Plane0) {
                int s0 = GermanRomAddressMap.fixed(rom, 269128);
                int s1 = GermanRomAddressMap.fixed(rom, 269186);
                int s2 = GermanRomAddressMap.fixed(rom, 269264);
                int s3 = GermanRomAddressMap.fixed(rom, 270294);
                int s4 = GermanRomAddressMap.fixed(rom, 271132);
                int s5 = GermanRomAddressMap.fixed(rom, 271308);
                int s6 = GermanRomAddressMap.fixed(rom, 272140);
                int s7 = GermanRomAddressMap.fixed(rom, 272694);
                if (be16(rom, s0) != 4 || be16(rom, s1) != 4 || be32(rom, GermanRomAddressMap.fixed(rom, 269142)) != GermanRomAddressMap.fixed(rom, 198652) || be32(rom, GermanRomAddressMap.fixed(rom, 269200)) != GermanRomAddressMap.fixed(rom, 209332) || be16(rom, s2) != 4 || be16(rom, GermanRomAddressMap.fixed(rom, 269298)) != 34 || be32(rom, GermanRomAddressMap.fixed(rom, 269660)) != GermanRomAddressMap.fixed(rom, DYNAMIC00_PATTERNS) || be16(rom, s3) != 4 || be16(rom, GermanRomAddressMap.fixed(rom, 270296)) != 6 || be16(rom, s4) != 4 || be16(rom, GermanRomAddressMap.fixed(rom, 271134)) != 7 || be16(rom, s5) != 4 || be16(rom, GermanRomAddressMap.fixed(rom, 271310)) != 9 || be16(rom, s6) != 4 || be16(rom, GermanRomAddressMap.fixed(rom, 272142)) != 10 || be16(rom, s7) != 4 || be16(rom, GermanRomAddressMap.fixed(rom, 272696)) != 11 || be16(rom, GermanRomAddressMap.fixed(rom, 272698)) != 52 || be32(rom, GermanRomAddressMap.fixed(rom, 272706)) != GermanRomAddressMap.fixed(rom, 267006)) {
                    throw new IOException("Original tutorial scripts changed");
                }
                return;
            }
        }
        throw new IOException("Original/tutorial-profile scene table changed");
    }

    private static byte[] readAll(InputStream input, long knownSize) throws IOException {
        int initial = (knownSize <= 0 || knownSize > 16777216) ? 1048576 : (int) knownSize;
        ByteArrayOutputStream out = new ByteArrayOutputStream(initial);
        byte[] buf = new byte[RazorVramPatternLoader.METATILE_BANK_BYTES];
        int total = 0;
        while (true) {
            int n = input.read(buf);
            if (n != -1) {
                total += n;
                if (total > 16777216) {
                    throw new IOException("ROM is unexpectedly large");
                }
                out.write(buf, 0, n);
            } else {
                return out.toByteArray();
            }
        }
    }

    private static File safeChild(File root, String relative) throws IOException {
        File out = new File(root, relative);
        String rootPath = root.getCanonicalPath();
        String outPath = out.getCanonicalPath();
        if (!outPath.equals(rootPath) && !outPath.startsWith(rootPath + File.separator)) {
            throw new IOException("Tutorial asset escaped staging root");
        }
        return out;
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

    private static String sha256(byte[] bytes) throws IOException {
        try {
            MessageDigest digest = MessageDigest.getInstance("SHA-256");
            byte[] hash = digest.digest(bytes);
            StringBuilder out = new StringBuilder(hash.length * 2);
            for (byte b : hash) {
                out.append(String.format("%02x", Integer.valueOf(b & 255)));
            }
            return out.toString();
        } catch (NoSuchAlgorithmException e) {
            throw new IOException("SHA-256 unavailable", e);
        }
    }

    private static byte[] copy(byte[] data, int off, int len) throws IOException {
        checkRange(data, off, len);
        return Arrays.copyOfRange(data, off, off + len);
    }

    private static int be16(byte[] data, int off) throws IOException {
        checkRange(data, off, 2);
        return ((data[off] & 255) << 8) | (data[off + 1] & 255);
    }

    private static int be32(byte[] data, int off) throws IOException {
        checkRange(data, off, 4);
        return ((data[off] & 255) << 24) | ((data[off + 1] & 255) << 16) | ((data[off + 2] & 255) << 8) | (data[off + 3] & 255);
    }

    private static void put32(byte[] data, int off, int value) {
        data[off] = (byte) (value >>> 24);
        data[off + 1] = (byte) (value >>> 16);
        data[off + 2] = (byte) (value >>> 8);
        data[off + 3] = (byte) value;
    }

    private static void checkRange(byte[] data, int off, int len) throws IOException {
        if (off < 0 || len < 0 || off > data.length - len) {
            throw new IOException("Tutorial ROM range");
        }
    }

    private static void ensureOutput(byte[] out, int off, int len) throws IOException {
        if (off < 0 || len < 0 || off > out.length - len) {
            throw new IOException("Tutorial output overrun");
        }
    }
}
