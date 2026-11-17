package com.ahsim.demulation;

import com.ahsim.demulation.RomFrontendAssetManifest;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

/* loaded from: classes2.dex */
public final class GenesisRomFrontendAssetProvider {
    private static final int MAX_DECOMPRESSED = 65536;
    private static final int MAX_ROM_BYTES = 16777216;
    private static final int PATTERN_BYTES = 32;
    private static final int RESOURCE_TABLE = 818290;
    private static final int[] LOSS_FRAMES = {802268, 803450, 804634, 805798};
    private static final int[] WIN_FRAMES = {807004, 807876, 808748, 809620};

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

    private GenesisRomFrontendAssetProvider() {
    }

    static Map<String, byte[]> decodeSelectedAssets(byte[] rom, List<String> paths) throws IOException {
        if (rom == null || paths == null) {
            throw new IOException("Localization decode arguments unavailable");
        }
        LinkedHashMap<String, byte[]> selected = new LinkedHashMap<>();
        HashSet<String> wanted = new HashSet<>(paths);
        for (LogicalAsset asset : decodeAssets(rom)) {
            if (wanted.contains(asset.path)) {
                selected.put(asset.path, (byte[]) asset.data.clone());
            }
        }
        for (String path : paths) {
            if (!selected.containsKey(path)) {
                throw new IOException("Localization asset not decoded: " + path);
            }
        }
        return selected;
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
            throw new IOException("Frontend staging directory is unavailable");
        }
        if (knownRomSize > 16777216) {
            throw new IOException("ROM is unexpectedly large");
        }
        byte[] rom = readAll(input, knownRomSize);
        if (rom.length < 819200) {
            throw new IOException("ROM is too small for frontend resources");
        }
        List<LogicalAsset> assets = decodeAssets(rom);
        List<RomFrontendAssetManifest.Entry> manifest = RomFrontendAssetManifest.entries();
        if (assets.size() != manifest.size()) {
            throw new IOException("Frontend manifest/generator count mismatch");
        }
        deleteRecursively(stagingRoot);
        if (!stagingRoot.mkdirs() && !stagingRoot.isDirectory()) {
            throw new IOException("Could not create frontend staging directory");
        }
        List<String> mismatches = new ArrayList<>();
        int i = 0;
        int verified2 = 0;
        while (true) {
            try {
                int verified3 = assets.size();
                if (i < verified3) {
                    LogicalAsset asset = assets.get(i);
                    RomFrontendAssetManifest.Entry expected = manifest.get(i);
                    if (!expected.relativePath.equals(asset.path)) {
                        throw new IOException("Frontend manifest order mismatch at " + i);
                    }
                    try {
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
                                throw new IOException("Could not create frontend asset directory");
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
                    } catch (IOException e3) {
                        e = e3;
                    } catch (RuntimeException e4) {
                        e = e4;
                    }
                } else {
                    if (!mismatches.isEmpty()) {
                        deleteRecursively(stagingRoot);
                        return new Result(manifest.size(), verified2, RomFrontendAssetManifest.payloadBytes(), mismatches, stagingRoot);
                    }
                    return new Result(manifest.size(), verified2, RomFrontendAssetManifest.payloadBytes(), mismatches, stagingRoot);
                }
            } catch (IOException | RuntimeException e5) {
                e = e5;
            }
        }
    }

    private static List<LogicalAsset> decodeAssets(byte[] rom) throws IOException {
        List<LogicalAsset> out = new ArrayList<>();
        addStandard(out, rom, 0, "house_selector", true);
        addStandard(out, rom, 8, "ending_next_level", true);
        addStandard(out, rom, 10, "password", true);
        addSequence(out, rom, 9, "loss", LOSS_FRAMES);
        addSequence(out, rom, 11, "win", WIN_FRAMES);
        int resourceTable = GermanRomAddressMap.fixed(rom, RESOURCE_TABLE);
        int titleEntry = resourceTable + RomRuntimeNativeDataAssets.VISUAL_STREAMS_OFFSET;
        int titlePatternTable = u24(be32(rom, titleEntry));
        int introMap = u24(be32(rom, titleEntry + 4));
        int titlePalette = u24(be32(rom, titleEntry + 8));
        int logoMap = u24(be32(rom, resourceTable + 208 + 4));
        out.add(new LogicalAsset("frontend/title_shared_patterns.bin", decodePatternTable(rom, titlePatternTable)));
        out.add(new LogicalAsset("frontend/intro_arrakis_map.bin", decodeMapDescriptor(rom, introMap)));
        out.add(new LogicalAsset("frontend/logo_title_map.bin", decodeMapDescriptor(rom, logoMap)));
        out.add(new LogicalAsset("frontend/title_palette.bin", copy(rom, titlePalette, 128)));
        int optionsEntry = resourceTable + 224;
        out.add(new LogicalAsset("frontend/options_patterns.bin", decodePatternTable(rom, u24(be32(rom, optionsEntry)))));
        out.add(new LogicalAsset("frontend/options_map.bin", decodeMapDescriptor(rom, u24(be32(rom, optionsEntry + 4)))));
        return out;
    }

    private static void addStandard(List<LogicalAsset> out, byte[] rom, int id, String stem, boolean palette) throws IOException {
        int entry = GermanRomAddressMap.fixed(rom, RESOURCE_TABLE) + (id * 16);
        out.add(new LogicalAsset("frontend/" + stem + "_patterns.bin", decodePatternTable(rom, u24(be32(rom, entry)))));
        out.add(new LogicalAsset("frontend/" + stem + "_map.bin", decodeMapDescriptor(rom, u24(be32(rom, entry + 4)))));
        if (palette) {
            out.add(new LogicalAsset("frontend/" + stem + "_palette.bin", copy(rom, u24(be32(rom, entry + 8)), 128)));
        }
    }

    private static void addSequence(List<LogicalAsset> out, byte[] rom, int id, String stem, int[] framePointers) throws IOException {
        int entry = GermanRomAddressMap.fixed(rom, RESOURCE_TABLE) + (id * 16);
        out.add(new LogicalAsset("frontend/" + stem + "_patterns.bin", decodePatternTable(rom, u24(be32(rom, entry)))));
        for (int i = 0; i < framePointers.length; i++) {
            out.add(new LogicalAsset("frontend/" + stem + "_frame" + i + ".bin", decompress(rom, GermanRomAddressMap.fixed(rom, framePointers[i]))));
        }
        out.add(new LogicalAsset("frontend/" + stem + "_palette.bin", copy(rom, u24(be32(rom, entry + 8)), 128)));
    }

    private static byte[] decodePatternTable(byte[] rom, int tableOffset) throws IOException {
        if (tableOffset <= 0) {
            throw new IOException("Missing frontend pattern table");
        }
        int p = tableOffset;
        int total = 0;
        List<Integer> flagsList = new ArrayList<>();
        List<Integer> pointers = new ArrayList<>();
        while (true) {
            int flags = be16(rom, p);
            if (flags != 0) {
                int dst = p + 2;
                int pointer = u24(be32(rom, dst));
                p += 6;
                int bytes = (flags & 32767) * 32;
                if (bytes <= 0 || total + bytes > 65536) {
                    break;
                }
                total += bytes;
                flagsList.add(Integer.valueOf(flags));
                pointers.add(Integer.valueOf(pointer));
            } else {
                byte[] result = new byte[total];
                byte[] scratch = new byte[65536];
                int dst2 = 0;
                for (int i = 0; i < flagsList.size(); i++) {
                    int flags2 = flagsList.get(i).intValue();
                    int bytes2 = (flags2 & 32767) * 32;
                    if ((32768 & flags2) != 0) {
                        byte[] decoded = decompress(rom, pointers.get(i).intValue());
                        if (decoded.length == 0) {
                            throw new IOException("Empty frontend pattern stream");
                        }
                        System.arraycopy(decoded, 0, scratch, 0, decoded.length);
                        System.arraycopy(scratch, 0, result, dst2, bytes2);
                    } else {
                        checkRange(rom, pointers.get(i).intValue(), bytes2);
                        System.arraycopy(rom, pointers.get(i).intValue(), result, dst2, bytes2);
                    }
                    dst2 += bytes2;
                }
                return result;
            }
        }
        throw new IOException("Frontend pattern table overrun");
    }

    private static byte[] decodeMapDescriptor(byte[] rom, int descriptor) throws IOException {
        byte[] part;
        if (descriptor <= 0) {
            throw new IOException("Missing frontend map descriptor");
        }
        ByteArrayOutputStream out = new ByteArrayOutputStream(8192);
        int p = descriptor;
        while (true) {
            int flags = be16(rom, p);
            if (flags != 0) {
                int pointer = u24(be32(rom, p + 2));
                p += 6;
                if ((32768 & flags) != 0) {
                    int declaredBytes = flags & 32767;
                    byte[] decoded = decompress(rom, pointer);
                    if (declaredBytes <= 0 || decoded.length < declaredBytes) {
                        break;
                    }
                    part = new byte[declaredBytes];
                    System.arraycopy(decoded, 0, part, 0, declaredBytes);
                } else {
                    part = copy(rom, pointer, (flags & 32767) * 2);
                }
                if (out.size() + part.length > 65536) {
                    throw new IOException("Frontend map overrun");
                }
                out.write(part, 0, part.length);
            } else {
                return out.toByteArray();
            }
        }
        throw new IOException("Frontend compressed map shorter than descriptor");
    }

    /* JADX WARN: Code restructure failed: missing block: B:54:0x00ac, code lost:
    
        throw new java.io.IOException("Frontend absolute-copy range");
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0072, code lost:
    
        throw new java.io.IOException("Frontend short-copy range");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static byte[] decompress(byte[] r11, int r12) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 290
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ahsim.demulation.GenesisRomFrontendAssetProvider.decompress(byte[], int):byte[]");
    }

    private static byte[] readAll(InputStream input, long knownSize) throws IOException {
        int initial = (knownSize <= 0 || knownSize > 16777216) ? 1048576 : (int) knownSize;
        ByteArrayOutputStream out = new ByteArrayOutputStream(initial);
        byte[] buffer = new byte[8192];
        int total = 0;
        while (true) {
            int n = input.read(buffer);
            if (n < 0) {
                if (knownSize < 0 || knownSize == total) {
                    return out.toByteArray();
                }
                throw new IOException("ROM size changed while reading");
            }
            if (n != 0) {
                total += n;
                if (total > 16777216) {
                    throw new IOException("ROM exceeds frontend provider limit");
                }
                out.write(buffer, 0, n);
            }
        }
    }

    private static File safeChild(File root, String relativePath) throws IOException {
        File child = new File(root, relativePath).getCanonicalFile();
        String rp = root.getCanonicalPath();
        String cp = child.getCanonicalPath();
        if (!cp.startsWith(rp + File.separator)) {
            throw new IOException("Unsafe frontend output path");
        }
        return child;
    }

    private static byte[] copy(byte[] rom, int offset, int length) throws IOException {
        checkRange(rom, offset, length);
        byte[] out = new byte[length];
        System.arraycopy(rom, offset, out, 0, length);
        return out;
    }

    private static int be16(byte[] rom, int offset) throws IOException {
        checkRange(rom, offset, 2);
        return ((rom[offset] & 255) << 8) | (rom[offset + 1] & 255);
    }

    private static int be32(byte[] rom, int offset) throws IOException {
        checkRange(rom, offset, 4);
        return ((rom[offset] & 255) << 24) | ((rom[offset + 1] & 255) << 16) | ((rom[offset + 2] & 255) << 8) | (rom[offset + 3] & 255);
    }

    private static int u24(int value) {
        return 16777215 & value;
    }

    private static void checkRange(byte[] rom, int offset, int length) throws IOException {
        if (offset < 0 || length < 0 || offset > rom.length - length) {
            throw new IOException("ROM frontend range outside file");
        }
    }

    private static void ensureOut(int offset, int length) throws IOException {
        if (offset < 0 || length < 0 || offset > 65536 - length) {
            throw new IOException("Frontend decode output overrun");
        }
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
            throw new IOException("Could not delete " + file.getAbsolutePath());
        }
    }

    private static String sha256(byte[] data) throws IOException {
        try {
            MessageDigest md = MessageDigest.getInstance("SHA-256");
            byte[] hash = md.digest(data);
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
