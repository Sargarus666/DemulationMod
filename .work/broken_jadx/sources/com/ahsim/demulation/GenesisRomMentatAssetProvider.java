package com.ahsim.demulation;

import com.ahsim.demulation.RomMentatAssetManifest;
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
public final class GenesisRomMentatAssetProvider {
    private static final int BACKDROP_H = 112;
    private static final int BACKDROP_LAYER_BYTES = 29568;
    private static final int BACKDROP_W = 264;
    private static final int COMMON_PALETTE = 667006;
    private static final int COMPONENT_BYTE_REMAP = 147586;
    private static final int COMPONENT_HEIGHT = 147554;
    private static final int COMPONENT_TILE_COUNT = 615172;
    private static final int COMPONENT_WIDTH = 147522;
    private static final int EYE_BANK_PTRS = 153920;
    private static final int EYE_EXPECTED = 2880;
    private static final int EYE_POSITION_TABLE = 153944;
    private static final int FINAL_MISSION_COMMON_PALETTE = 667134;
    private static final int HOUSE_COMPONENT_PTRS = 614252;
    private static final int HOUSE_DESCRIPTOR_PTRS = 615132;
    private static final int HOUSE_JOIN_POINTER_TABLE = 556412;
    private static final int HOUSE_PALETTES = 666686;
    private static final int HOUSE_PATTERN_BYTES = 624358;
    private static final int MAX_DECOMPRESSED = 65536;
    private static final int MAX_ROM_BYTES = 16777216;
    private static final int MOUTH_BANK_PTRS = 153932;
    private static final int MOUTH_EXPECTED = 5600;
    private static final int MOUTH_POSITION_TABLE = 153956;
    private static final int PORTRAIT_BANK_PTRS = 153908;
    private static final int SELECTOR_BRIEFING_STREAM = 665624;
    private static final int SELECTOR_COMMON_STREAM = 665596;
    private static final int SELECTOR_JOIN_STREAM = 666180;
    private static final int SPRITE_TEMPLATE = 153580;
    private static final int STATIC_COMPONENT_STREAM = 613632;
    private static final int STATIC_DESCRIPTOR_PTRS = 614744;
    private static final int STATIC_PATTERN_BYTES = 615204;
    private static final int[] PORTRAIT_EXPECTED = {10368, 10368, 10368};
    private static final String[] HOUSE_TAG = {"radnor_harkonnen", "cyril_atreides", "ammon_ordos"};

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

    private GenesisRomMentatAssetProvider() {
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
            throw new IOException("Mentat staging directory is unavailable");
        }
        if (knownRomSize > 16777216) {
            throw new IOException("ROM is unexpectedly large");
        }
        byte[] rom = readAll(input, knownRomSize);
        if (rom.length < 671744) {
            throw new IOException("ROM is too small for Mentat resources");
        }
        List<LogicalAsset> assets = decodeAssets(rom);
        List<RomMentatAssetManifest.Entry> manifest = RomMentatAssetManifest.entries();
        if (assets.size() != manifest.size()) {
            throw new IOException("Mentat manifest/generator count mismatch");
        }
        deleteRecursively(stagingRoot);
        if (!stagingRoot.mkdirs() && !stagingRoot.isDirectory()) {
            throw new IOException("Could not create Mentat staging directory");
        }
        List<String> mismatches = new ArrayList<>();
        int i = 0;
        int verified2 = 0;
        while (true) {
            try {
                int verified3 = assets.size();
                if (i < verified3) {
                    LogicalAsset asset = assets.get(i);
                    RomMentatAssetManifest.Entry expected = manifest.get(i);
                    if (!expected.relativePath.equals(asset.path)) {
                        throw new IOException("Mentat manifest order mismatch at " + i);
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
                                throw new IOException("Could not create Mentat asset directory");
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
                    }
                    return new Result(manifest.size(), verified2, RomMentatAssetManifest.payloadBytes(), mismatches, stagingRoot);
                }
            } catch (IOException | RuntimeException e5) {
                e = e5;
            }
        }
    }

    private static List<LogicalAsset> decodeAssets(byte[] rom) throws IOException {
        byte[] selectorBriefing;
        List<LogicalAsset> out = new ArrayList<>();
        for (int house = 0; house < 3; house++) {
            byte[] portrait = decompress(rom, be32(rom, GermanRomAddressMap.fixed(rom, PORTRAIT_BANK_PTRS) + (house * 4)));
            byte[] eyes = decompress(rom, be32(rom, GermanRomAddressMap.fixed(rom, EYE_BANK_PTRS) + (house * 4)));
            byte[] mouth = decompress(rom, be32(rom, GermanRomAddressMap.fixed(rom, MOUTH_BANK_PTRS) + (house * 4)));
            if (portrait.length != PORTRAIT_EXPECTED[house] || eyes.length != EYE_EXPECTED || mouth.length != MOUTH_EXPECTED) {
                throw new IOException("Unexpected Mentat face-bank size for House " + house);
            }
            out.add(new LogicalAsset("frontend/mentat/" + HOUSE_TAG[house] + "_portrait.bin", portrait));
            out.add(new LogicalAsset("frontend/mentat/" + HOUSE_TAG[house] + "_eyes.bin", eyes));
            out.add(new LogicalAsset("frontend/mentat/" + HOUSE_TAG[house] + "_mouth.bin", mouth));
        }
        for (int house2 = 0; house2 < 3; house2++) {
            for (int mission = 0; mission < 9; mission++) {
                out.add(new LogicalAsset(String.format(Locale.US, "frontend/mentat/backdrop_%s_m%02d_layers.bin", HOUSE_TAG[house2], Integer.valueOf(mission + 1)), decodeBackdropLayers(rom, house2, mission)));
            }
        }
        byte[] selectorCommon = decompress(rom, GermanRomAddressMap.fixed(rom, SELECTOR_COMMON_STREAM));
        if (GermanRomAddressMap.isExactGerman(rom)) {
            selectorBriefing = copy(rom, GermanRomAddressMap.fixed(rom, SELECTOR_BRIEFING_STREAM), 1280);
        } else {
            selectorBriefing = decompress(rom, GermanRomAddressMap.fixed(rom, SELECTOR_BRIEFING_STREAM));
        }
        byte[] selectorJoin = decompress(rom, GermanRomAddressMap.fixed(rom, SELECTOR_JOIN_STREAM));
        if (selectorCommon.length != 640 || selectorBriefing.length != 1280 || selectorJoin.length != 1280) {
            throw new IOException("Unexpected Mentat selector decode size");
        }
        out.add(new LogicalAsset("frontend/mentat/selector_common.bin", selectorCommon));
        out.add(new LogicalAsset("frontend/mentat/selector_briefing.bin", selectorBriefing));
        out.add(new LogicalAsset("frontend/mentat/selector_join.bin", selectorJoin));
        out.add(new LogicalAsset("frontend/mentat/common_palette.bin", copy(rom, GermanRomAddressMap.fixed(rom, COMMON_PALETTE), 64)));
        out.add(new LogicalAsset("frontend/mentat/final_mission_common_palette.bin", copy(rom, GermanRomAddressMap.fixed(rom, FINAL_MISSION_COMMON_PALETTE), 64)));
        for (int house3 = 0; house3 < 3; house3++) {
            out.add(new LogicalAsset("frontend/mentat/" + HOUSE_TAG[house3] + "_palette.bin", copy(rom, GermanRomAddressMap.fixed(rom, (house3 * 128) + HOUSE_PALETTES), 64)));
        }
        out.add(new LogicalAsset("frontend/mentat/sprite_template.bin", copy(rom, GermanRomAddressMap.fixed(rom, SPRITE_TEMPLATE), 320)));
        out.add(new LogicalAsset("frontend/mentat/eye_positions.bin", copy(rom, GermanRomAddressMap.fixed(rom, EYE_POSITION_TABLE), 12)));
        out.add(new LogicalAsset("frontend/mentat/mouth_positions.bin", copy(rom, GermanRomAddressMap.fixed(rom, MOUTH_POSITION_TABLE), 12)));
        for (int house4 = 0; house4 < 3; house4++) {
            int pointer = be32(rom, GermanRomAddressMap.fixed(rom, HOUSE_JOIN_POINTER_TABLE) + (house4 * 4)) & 16777215;
            out.add(new LogicalAsset("frontend/mentat/" + HOUSE_TAG[house4] + "_join_text.bin", readCStringBytes(rom, pointer, RazorTerrainAtlas.HEIGHT)));
        }
        return out;
    }

    private static byte[] readCStringBytes(byte[] rom, int offset, int guard) throws IOException {
        if (offset < 0 || offset >= rom.length) {
            throw new IOException("Mentat join-text pointer outside ROM");
        }
        int end = offset;
        int limit = Math.min(rom.length, offset + guard);
        while (end < limit && rom[end] != 0) {
            int c = rom[end] & 255;
            boolean german = GermanRomAddressMap.isExactGerman(rom);
            if (c < 32 || (!german && c > 126)) {
                throw new IOException("Mentat join text contains an invalid character");
            }
            end++;
        }
        if (end >= limit || end >= rom.length) {
            throw new IOException("Mentat join text is unterminated");
        }
        byte[] out = new byte[(end - offset) + 1];
        System.arraycopy(rom, offset, out, 0, out.length);
        return out;
    }

    private static byte[] decodeBackdropLayers(byte[] rom, int house, int missionZero) throws IOException {
        byte[][] base = drawDescriptorCall(rom, GermanRomAddressMap.fixed(rom, STATIC_DESCRIPTOR_PTRS), GermanRomAddressMap.fixed(rom, STATIC_COMPONENT_STREAM), GermanRomAddressMap.fixed(rom, STATIC_PATTERN_BYTES));
        int houseComponents = be32(rom, GermanRomAddressMap.fixed(rom, HOUSE_COMPONENT_PTRS) + (house * 4)) + (missionZero * 20);
        byte[][] overlay = drawDescriptorCall(rom, GermanRomAddressMap.fixed(rom, HOUSE_DESCRIPTOR_PTRS), houseComponents, GermanRomAddressMap.fixed(rom, HOUSE_PATTERN_BYTES));
        for (int layer = 0; layer < 2; layer++) {
            for (int i = 0; i < 29568; i++) {
                if (overlay[layer][i] != 0) {
                    base[layer][i] = overlay[layer][i];
                }
            }
        }
        byte[] result = new byte[59136];
        System.arraycopy(base[0], 0, result, 0, 29568);
        System.arraycopy(base[1], 0, result, 29568, 29568);
        return result;
    }

    private static byte[][] drawDescriptorCall(byte[] rom, int descriptorPointerTable, int componentStream, int patternBytes) throws IOException {
        int patternBytes2;
        byte[][] layers = {new byte[29568], new byte[29568]};
        int tileIndex = 0;
        int components = componentStream;
        int slot = 0;
        while (slot < 10) {
            int descriptor = be32(rom, (slot * 4) + descriptorPointerTable);
            int x = s16(rom, descriptor);
            int y = s16(rom, descriptor + 2);
            int code = be16(rom, descriptor + 4);
            int mode = be16(rom, components);
            int components2 = components + 2;
            int code2 = code;
            int code3 = y;
            int y2 = x;
            int tileIndex2 = tileIndex;
            int tileIndex3 = descriptor + 6;
            while (true) {
                patternBytes2 = patternBytes;
                blitComponent(rom, layers, patternBytes2, tileIndex2, y2, code3, code2, mode);
                tileIndex2 += be16(rom, GermanRomAddressMap.fixed(rom, COMPONENT_TILE_COUNT) + (code2 * 2));
                if (be32(rom, tileIndex3) == 0) {
                    break;
                }
                y2 += s16(rom, tileIndex3);
                code3 += s16(rom, tileIndex3 + 2);
                code2 = be16(rom, tileIndex3 + 4);
                tileIndex3 += 6;
                patternBytes = patternBytes2;
            }
            slot++;
            patternBytes = patternBytes2;
            tileIndex = tileIndex2;
            components = components2;
        }
        return layers;
    }

    private static void blitComponent(byte[] rom, byte[][] layers, int sourceBase, int firstTile, int x, int y, int code, int mode) throws IOException {
        int layer;
        int px;
        byte[] bArr = rom;
        int mode2 = mode;
        int layer2 = 0;
        boolean z = true;
        if (mode2 > 1) {
            layer2 = 1;
            mode2 -= 2;
        }
        int tilesWide = be16(bArr, GermanRomAddressMap.fixed(bArr, COMPONENT_WIDTH) + (code * 2)) + 1;
        int tilesHigh = be16(bArr, GermanRomAddressMap.fixed(bArr, COMPONENT_HEIGHT) + (code * 2)) + 1;
        int dx0 = x - 24;
        int dy0 = y - 48;
        int tile = firstTile;
        int cx = 0;
        while (cx < tilesWide) {
            int cy = 0;
            while (cy < tilesHigh) {
                int tileOffset = sourceBase + (tile * 32);
                checkRange(bArr, tileOffset, 32);
                int py = 0;
                while (py < 8) {
                    int pair = 0;
                    while (pair < 4) {
                        int packed = bArr[(py * 4) + tileOffset + pair] & 255;
                        if (mode2 != 0) {
                            packed = bArr[GermanRomAddressMap.fixed(bArr, COMPONENT_BYTE_REMAP) + packed] & 255;
                        }
                        int hi = packed >>> 4;
                        boolean z2 = z;
                        int lo = packed & 15;
                        int px2 = dx0 + (cx * 8) + (pair * 2);
                        int mode3 = mode2;
                        int mode4 = dy0 + (cy * 8) + py;
                        if (mode4 >= 0) {
                            layer = layer2;
                            if (mode4 < BACKDROP_H) {
                                if (hi == 0 || px2 < 0 || px2 >= BACKDROP_W) {
                                    px = px2;
                                } else {
                                    px = px2;
                                    layers[layer][(mode4 * BACKDROP_W) + px2] = (byte) hi;
                                }
                                if (lo != 0 && px + 1 >= 0 && px + 1 < BACKDROP_W) {
                                    layers[layer][(mode4 * BACKDROP_W) + px + 1] = (byte) lo;
                                }
                            }
                        } else {
                            layer = layer2;
                        }
                        pair++;
                        bArr = rom;
                        mode2 = mode3;
                        z = z2;
                        layer2 = layer;
                    }
                    py++;
                    bArr = rom;
                }
                tile++;
                cy++;
                bArr = rom;
            }
            cx++;
            bArr = rom;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:54:0x00ac, code lost:
    
        throw new java.io.IOException("Mentat absolute-copy range");
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0072, code lost:
    
        throw new java.io.IOException("Mentat short-copy range");
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
        throw new UnsupportedOperationException("Method not decompiled: com.ahsim.demulation.GenesisRomMentatAssetProvider.decompress(byte[], int):byte[]");
    }

    private static byte[] copyZeroTerminated(byte[] rom, int offset, int maxBytes) throws IOException {
        checkRange(rom, offset, 1);
        int end = offset;
        while (end < rom.length && end - offset < maxBytes && rom[end] != 0) {
            end++;
        }
        if (end < rom.length && end - offset < maxBytes) {
            return copy(rom, offset, (end - offset) + 1);
        }
        throw new IOException("Mentat join text is not terminated");
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
                    throw new IOException("ROM exceeds Mentat provider limit");
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
            throw new IOException("Unsafe Mentat output path");
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

    private static int s16(byte[] rom, int offset) throws IOException {
        int v = be16(rom, offset);
        return (32768 & v) != 0 ? v - 65536 : v;
    }

    private static int be32(byte[] rom, int offset) throws IOException {
        checkRange(rom, offset, 4);
        return ((rom[offset] & 255) << 24) | ((rom[offset + 1] & 255) << 16) | ((rom[offset + 2] & 255) << 8) | (rom[offset + 3] & 255);
    }

    private static void checkRange(byte[] rom, int offset, int length) throws IOException {
        if (offset < 0 || length < 0 || offset > rom.length - length) {
            throw new IOException("ROM Mentat range outside file");
        }
    }

    private static void ensureOut(int offset, int length) throws IOException {
        if (offset < 0 || length < 0 || offset > 65536 - length) {
            throw new IOException("Mentat decode output overrun");
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
