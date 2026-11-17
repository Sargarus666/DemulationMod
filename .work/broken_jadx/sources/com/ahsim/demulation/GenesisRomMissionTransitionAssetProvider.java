package com.ahsim.demulation;

import com.ahsim.demulation.RomMissionTransitionAssetManifest;
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
import java.util.Locale;

/* loaded from: classes2.dex */
public final class GenesisRomMissionTransitionAssetProvider {
    private static final int BANNER_PALETTE = 41948;
    private static final int BANNER_PATTERN_BASE = 1408;
    private static final int COMPONENT_BYTE_REMAP = 147586;
    private static final int COMPONENT_HEIGHT = 147554;
    private static final int COMPONENT_TILE_COUNT = 615172;
    private static final int COMPONENT_WIDTH = 147522;
    private static final int FOCUS_PALETTE_OFFSET_TABLE = 613624;
    private static final int[] FRONTEND_TO_ROM_HOUSE = {1, 0, 2};
    private static final int HOUSE_COMPONENT_PTRS = 614252;
    private static final int HOUSE_DESCRIPTOR_PTRS = 615132;
    private static final int HOUSE_PATTERN_BYTES = 624358;
    private static final int LOSS_BANNER_GFX = 40412;
    private static final int LOSS_BANNER_LAYOUT = 40348;
    private static final int MAX_ROM_BYTES = 16777216;
    private static final int MISSION_MAP_RECORD_PTRS = 614480;
    private static final int STATIC_COMPONENT_STREAM = 613632;
    private static final int STATIC_DESCRIPTOR_PTRS = 614744;
    private static final int STATIC_PATTERN_BYTES = 615204;
    private static final int WIN_BANNER_GFX = 41084;
    private static final int WIN_BANNER_LAYOUT = 40374;
    private static final int ZOOM_PIECE_STRIDE = 252;
    private static final int ZOOM_RECORD_BYTES = 12;
    private static final int ZOOM_TABLE = 150414;

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

    private static final class Geometry {
        final byte[] bytes;
        final int tileCount;

        Geometry(byte[] bytes, int tileCount) {
            this.bytes = bytes;
            this.tileCount = tileCount;
        }
    }

    private GenesisRomMissionTransitionAssetProvider() {
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
            throw new IOException("Mission/campaign staging directory is unavailable");
        }
        if (knownRomSize > 16777216) {
            throw new IOException("ROM is unexpectedly large");
        }
        byte[] rom = readAll(input, knownRomSize);
        if (rom.length < 671744) {
            throw new IOException("ROM is too small for mission/campaign resources");
        }
        List<LogicalAsset> assets = decodeAssets(rom);
        List<RomMissionTransitionAssetManifest.Entry> manifest = RomMissionTransitionAssetManifest.entries();
        if (assets.size() != manifest.size()) {
            throw new IOException("Mission/campaign manifest/generator count mismatch");
        }
        deleteRecursively(stagingRoot);
        if (!stagingRoot.mkdirs() && !stagingRoot.isDirectory()) {
            throw new IOException("Could not create mission/campaign staging directory");
        }
        List<String> mismatches = new ArrayList<>();
        int i = 0;
        int verified2 = 0;
        while (true) {
            try {
                int verified3 = assets.size();
                if (i < verified3) {
                    LogicalAsset asset = assets.get(i);
                    RomMissionTransitionAssetManifest.Entry expected = manifest.get(i);
                    if (!expected.relativePath.equals(asset.path)) {
                        throw new IOException("Mission/campaign manifest order mismatch at " + i);
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
                                throw new IOException("Could not create mission/campaign asset directory");
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
                    return new Result(manifest.size(), verified2, RomMissionTransitionAssetManifest.payloadBytes(), mismatches, stagingRoot);
                }
            } catch (IOException | RuntimeException e5) {
                e = e5;
            }
        }
    }

    private static List<LogicalAsset> decodeAssets(byte[] rom) throws IOException {
        List<LogicalAsset> out = new ArrayList<>();
        out.add(new LogicalAsset("frontend/mission_sequence/banner_palette.bin", copy(rom, GermanRomAddressMap.fixed(rom, BANNER_PALETTE), 128)));
        out.add(new LogicalAsset("frontend/mission_sequence/loss_banner_patterns.bin", copy(rom, GermanRomAddressMap.fixed(rom, LOSS_BANNER_GFX), usedBannerPatternBytes(rom, GermanRomAddressMap.fixed(rom, LOSS_BANNER_LAYOUT)))));
        out.add(new LogicalAsset("frontend/mission_sequence/loss_banner_layout.bin", copyBannerLayout(rom, GermanRomAddressMap.fixed(rom, LOSS_BANNER_LAYOUT))));
        out.add(new LogicalAsset("frontend/mission_sequence/win_banner_patterns.bin", copy(rom, GermanRomAddressMap.fixed(rom, WIN_BANNER_GFX), usedBannerPatternBytes(rom, GermanRomAddressMap.fixed(rom, WIN_BANNER_LAYOUT)))));
        out.add(new LogicalAsset("frontend/mission_sequence/win_banner_layout.bin", copyBannerLayout(rom, GermanRomAddressMap.fixed(rom, WIN_BANNER_LAYOUT))));
        Geometry staticGeometry = buildGeometry(rom, GermanRomAddressMap.fixed(rom, STATIC_DESCRIPTOR_PTRS));
        Geometry houseGeometry = buildGeometry(rom, GermanRomAddressMap.fixed(rom, HOUSE_DESCRIPTOR_PTRS));
        out.add(new LogicalAsset("frontend/campaign_transition/static_geometry.bin", staticGeometry.bytes));
        out.add(new LogicalAsset("frontend/campaign_transition/house_geometry.bin", houseGeometry.bytes));
        out.add(new LogicalAsset("frontend/campaign_transition/static_patterns.bin", copy(rom, GermanRomAddressMap.fixed(rom, STATIC_PATTERN_BYTES), staticGeometry.tileCount * 32)));
        out.add(new LogicalAsset("frontend/campaign_transition/house_patterns.bin", copy(rom, GermanRomAddressMap.fixed(rom, HOUSE_PATTERN_BYTES), houseGeometry.tileCount * 32)));
        out.add(new LogicalAsset("frontend/campaign_transition/static_modes.bin", copy(rom, GermanRomAddressMap.fixed(rom, STATIC_COMPONENT_STREAM), 20)));
        out.add(new LogicalAsset("frontend/campaign_transition/house_modes.bin", buildHouseModes(rom)));
        out.add(new LogicalAsset("frontend/campaign_transition/mission_records.bin", buildMissionRecords(rom)));
        out.add(new LogicalAsset("frontend/campaign_transition/byte_remap.bin", copy(rom, GermanRomAddressMap.fixed(rom, COMPONENT_BYTE_REMAP), 256)));
        out.add(new LogicalAsset("frontend/campaign_transition/zoom_records.bin", buildZoomRecords(rom)));
        out.add(new LogicalAsset("frontend/campaign_transition/focus_palette_offsets.bin", copy(rom, GermanRomAddressMap.fixed(rom, FOCUS_PALETTE_OFFSET_TABLE), 8)));
        return out;
    }

    private static Geometry buildGeometry(byte[] rom, int descriptorPointerTable) throws IOException {
        ByteArrayOutputStream bytes = new ByteArrayOutputStream();
        DataOutputStream out = new DataOutputStream(bytes);
        out.write(new byte[]{68, 77, 80, 71});
        out.writeShort(1);
        out.writeShort(10);
        int tileIndex = 0;
        int slot = 0;
        while (slot < 10) {
            int descriptor = be32(rom, descriptorPointerTable + (slot * 4));
            int x = s16(rom, descriptor);
            int y = s16(rom, descriptor + 2);
            int code = be16(rom, descriptor + 4);
            int descriptor2 = descriptor + 6;
            List<int[]> components = new ArrayList<>();
            int tileIndex2 = tileIndex;
            int x2 = x;
            int y2 = y;
            do {
                int tilesWide = be16(rom, GermanRomAddressMap.fixed(rom, COMPONENT_WIDTH) + (code * 2)) + 1;
                int tilesHigh = be16(rom, GermanRomAddressMap.fixed(rom, COMPONENT_HEIGHT) + (code * 2)) + 1;
                int tileCount = be16(rom, GermanRomAddressMap.fixed(rom, COMPONENT_TILE_COUNT) + (code * 2));
                if (tilesWide < 1 || tilesHigh < 1 || tileCount < 1) {
                    throw new IOException("Invalid campaign component geometry");
                }
                components.add(new int[]{x2, y2, tileIndex2, tilesWide, tilesHigh, tileCount});
                tileIndex2 += tileCount;
                if (be32(rom, descriptor2) != 0) {
                    x2 += s16(rom, descriptor2);
                    y2 += s16(rom, descriptor2 + 2);
                    code = be16(rom, descriptor2 + 4);
                    descriptor2 += 6;
                } else {
                    out.writeShort(components.size());
                    for (int[] c : components) {
                        out.writeShort(c[0]);
                        out.writeShort(c[1]);
                        out.writeShort(c[2]);
                        out.writeShort(c[3]);
                        out.writeShort(c[4]);
                        out.writeShort(c[5]);
                    }
                    slot++;
                    tileIndex = tileIndex2;
                }
            } while (components.size() <= 32);
            throw new IOException("Campaign descriptor-chain guard");
        }
        out.flush();
        return new Geometry(bytes.toByteArray(), tileIndex);
    }

    private static byte[] buildHouseModes(byte[] rom) throws IOException {
        ByteArrayOutputStream out = new ByteArrayOutputStream(540);
        for (int frontendHouse = 0; frontendHouse < 3; frontendHouse++) {
            int romHouse = FRONTEND_TO_ROM_HOUSE[frontendHouse];
            int table = be32(rom, GermanRomAddressMap.fixed(rom, HOUSE_COMPONENT_PTRS) + (romHouse * 4));
            for (int mission = 0; mission < 9; mission++) {
                out.write(copy(rom, (mission * 20) + table, 20));
            }
        }
        return out.toByteArray();
    }

    private static byte[] buildMissionRecords(byte[] rom) throws IOException {
        ByteArrayOutputStream out = new ByteArrayOutputStream(216);
        for (int frontendHouse = 0; frontendHouse < 3; frontendHouse++) {
            int romHouse = FRONTEND_TO_ROM_HOUSE[frontendHouse];
            int table = be32(rom, GermanRomAddressMap.fixed(rom, MISSION_MAP_RECORD_PTRS) + (romHouse * 4));
            for (int mission = 0; mission < 9; mission++) {
                out.write(copy(rom, (mission * 8) + table, 8));
            }
        }
        return out.toByteArray();
    }

    private static byte[] buildZoomRecords(byte[] rom) throws IOException {
        ByteArrayOutputStream out = new ByteArrayOutputStream(1920);
        for (int piece = 0; piece < 10; piece++) {
            for (int frame = 0; frame < 16; frame++) {
                int source = GermanRomAddressMap.fixed(rom, ZOOM_TABLE) + (piece * ZOOM_PIECE_STRIDE) + (frame * 12);
                out.write(copy(rom, source, 12));
            }
        }
        return out.toByteArray();
    }

    private static int usedBannerPatternBytes(byte[] rom, int layoutOffset) throws IOException {
        int pieces = be16(rom, layoutOffset) + 1;
        if (pieces < 1 || pieces > 8) {
            throw new IOException("Unexpected mission-banner piece count");
        }
        int maxPatternExclusive = BANNER_PATTERN_BASE;
        for (int i = 0; i < pieces; i++) {
            int p = layoutOffset + 2 + (i * 12);
            checkRange(rom, p, 12);
            int size = be16(rom, p + 6);
            int attr = be16(rom, p + 8);
            int tilesWide = ((size >>> 10) & 3) + 1;
            int tilesHigh = ((size >>> 8) & 3) + 1;
            int first = attr & 2047;
            if (first < BANNER_PATTERN_BASE) {
                throw new IOException("Mission-banner pattern base mismatch");
            }
            maxPatternExclusive = Math.max(maxPatternExclusive, (tilesWide * tilesHigh) + first);
        }
        return (maxPatternExclusive - 1408) * 32;
    }

    private static byte[] copyBannerLayout(byte[] rom, int offset) throws IOException {
        int pieces = be16(rom, offset) + 1;
        if (pieces < 1 || pieces > 8) {
            throw new IOException("Unexpected mission-banner piece count");
        }
        return copy(rom, offset, (pieces * 12) + 2);
    }

    private static byte[] copy(byte[] rom, int offset, int length) throws IOException {
        checkRange(rom, offset, length);
        return Arrays.copyOfRange(rom, offset, offset + length);
    }

    private static byte[] readAll(InputStream input, long knownSize) throws IOException {
        int initial = (knownSize <= 0 || knownSize >= 16777216) ? 1048576 : (int) knownSize;
        ByteArrayOutputStream out = new ByteArrayOutputStream(initial);
        byte[] buffer = new byte[65536];
        int total = 0;
        while (true) {
            int got = input.read(buffer);
            if (got >= 0) {
                if (got != 0) {
                    total += got;
                    if (total > 16777216) {
                        throw new IOException("ROM exceeds maximum supported size");
                    }
                    out.write(buffer, 0, got);
                }
            } else {
                return out.toByteArray();
            }
        }
    }

    private static File safeChild(File root, String relativePath) throws IOException {
        if (relativePath == null || relativePath.length() == 0 || relativePath.startsWith("/") || relativePath.startsWith("\\") || relativePath.contains("..") || relativePath.indexOf(58) >= 0) {
            throw new IOException("Unsafe mission/campaign asset path");
        }
        File canonicalRoot = root.getCanonicalFile();
        File child = new File(canonicalRoot, relativePath).getCanonicalFile();
        String prefix = canonicalRoot.getPath() + File.separator;
        if (!child.getPath().startsWith(prefix)) {
            throw new IOException("Mission/campaign asset escapes staging root");
        }
        return child;
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

    private static int s16(byte[] b, int o) throws IOException {
        int v = be16(b, o);
        return (32768 & v) != 0 ? v - 65536 : v;
    }

    private static int be16(byte[] b, int o) throws IOException {
        checkRange(b, o, 2);
        return ((b[o] & 255) << 8) | (b[o + 1] & 255);
    }

    private static int be32(byte[] b, int o) throws IOException {
        checkRange(b, o, 4);
        return ((b[o] & 255) << 24) | ((b[o + 1] & 255) << 16) | ((b[o + 2] & 255) << 8) | (b[o + 3] & 255);
    }

    private static void checkRange(byte[] b, int o, int n) throws IOException {
        if (o < 0 || n < 0 || o > b.length - n) {
            throw new IOException("Mission/campaign ROM range");
        }
    }

    public static void deleteRecursively(File file) throws IOException {
        if (file == null || !file.exists()) {
            return;
        }
        if (file.isDirectory()) {
            File[] children = file.listFiles();
            if (children == null) {
                throw new IOException("Could not list " + file);
            }
            for (File child : children) {
                deleteRecursively(child);
            }
        }
        if (!file.delete() && file.exists()) {
            throw new IOException("Could not delete " + file);
        }
    }
}
