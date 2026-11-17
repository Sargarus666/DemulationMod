package com.ahsim.demulation;

import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
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
public final class GenesisRomWorldTacticalSpriteAssetProvider {
    private static final int ACTION_ICON_COUNT = 6;
    private static final int DETAIL_PREVIEW_HEIGHT = 56;
    private static final int DETAIL_PREVIEW_PACKED_BYTES = 2688;
    private static final int DETAIL_PREVIEW_WIDTH = 96;
    private static final int EXPECTED_DIRECT_LAYOUTS = 156;
    private static final int EXPECTED_DYNAMIC_VISUALS = 39;
    private static final int EXPECTED_LOADED_PATTERNS = 698;
    private static final int EXPECTED_VALID_VISUALS = 271;
    private static final int FREMEN_GROUP_ICON = 456976;
    private static final int FREMEN_SINGLE_ICON = 460432;
    private static final int HARVESTER_EFFECT_LAYOUT_TABLE = 410094;
    private static final int HOUSE_PALETTE_FLAGS = 38280;
    private static final int MAX_ROM_BYTES = 16777216;
    private static final int ORIGINAL_PALETTE = 683160;
    private static final int PLACEMENT_GRID_GFX_A = 411462;
    private static final int PLACEMENT_GRID_GFX_B = 411718;
    private static final int PURCHASE_ICON_BYTES = 384;
    private static final int SIEGE_TANK_COMPOSITE_TABLE = 193274;
    private static final int SPRITE_FIRST_PATTERN = 922;
    private static final int SPRITE_LOADER_BLOCKS = 36;
    private static final int SPRITE_LOADER_TABLE = 42124;
    private static final int STRUCTURE_DETAIL_PREVIEW_TABLE = 557732;
    private static final int STRUCTURE_INFO_POINTERS = 440660;
    private static final int STRUCTURE_PURCHASE_ICON_COUNT = 19;
    private static final int STRUCTURE_PURCHASE_ICON_TABLE = 452672;
    private static final int TANK_COMPOSITE_TABLE = 191610;
    private static final int TRACKED_COMPOSITE_STRIDE = 26;
    private static final int UNIT_DETAIL_PREVIEW_TABLE = 586192;
    private static final int UNIT_INFO_POINTERS = 443836;
    private static final int UNIT_PURCHASE_ICON_COUNT = 27;
    private static final int UNIT_PURCHASE_ICON_TABLE = 461988;
    private static final int[] VICTORY_FLYOVER_LAYOUTS = {46588, 46674, 46760, 46846};
    private static final int VISUAL_ID_LIMIT = 350;
    private static final int VISUAL_TABLE = 396940;
    private static final int VRAM_PATTERN_COUNT = 2048;

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

    private GenesisRomWorldTacticalSpriteAssetProvider() {
    }

    public static Result extract(InputStream input, long knownRomSize, File stagingRoot, ProgressListener listener) throws IOException {
        return extract(input, knownRomSize, stagingRoot, listener, null);
    }

    public static Result extract(InputStream input, long knownRomSize, File stagingRoot, ProgressListener listener, String profileId) throws IOException {
        return extractInternal(input, knownRomSize, stagingRoot, listener, true, profileId);
    }

    public static Result extractOverlayCandidate(InputStream input, long knownRomSize, File stagingRoot, ProgressListener listener) throws IOException {
        return extractInternal(input, knownRomSize, stagingRoot, listener, false, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:102:0x014a, code lost:
    
        r16 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x0152, code lost:
    
        if (r5.isEmpty() != false) goto L84;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x0154, code lost:
    
        deleteRecursively(r26);
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x015d, code lost:
    
        r2 = r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x0163, code lost:
    
        return new com.ahsim.demulation.GenesisRomWorldTacticalSpriteAssetProvider.Result(r12.size(), r2, r3, r5, r26, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x0166, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x0164, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Removed duplicated region for block: B:37:0x009d A[Catch: RuntimeException -> 0x0168, IOException -> 0x016c, TryCatch #10 {IOException -> 0x016c, RuntimeException -> 0x0168, blocks: (B:31:0x0082, B:37:0x009d, B:38:0x00a7, B:44:0x00ba, B:46:0x00c0, B:77:0x00c9, B:78:0x00d2, B:85:0x00a2, B:99:0x0131, B:100:0x0149, B:102:0x014a, B:104:0x0154, B:105:0x0157), top: B:30:0x0082 }] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00ed A[Catch: RuntimeException -> 0x0121, IOException -> 0x0127, TRY_LEAVE, TryCatch #11 {IOException -> 0x0127, RuntimeException -> 0x0121, blocks: (B:41:0x00ac, B:49:0x00d5, B:53:0x00e7, B:55:0x00ed), top: B:40:0x00ac }] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00fd  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x00a2 A[Catch: RuntimeException -> 0x0168, IOException -> 0x016c, TryCatch #10 {IOException -> 0x016c, RuntimeException -> 0x0168, blocks: (B:31:0x0082, B:37:0x009d, B:38:0x00a7, B:44:0x00ba, B:46:0x00c0, B:77:0x00c9, B:78:0x00d2, B:85:0x00a2, B:99:0x0131, B:100:0x0149, B:102:0x014a, B:104:0x0154, B:105:0x0157), top: B:30:0x0082 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static com.ahsim.demulation.GenesisRomWorldTacticalSpriteAssetProvider.Result extractInternal(java.io.InputStream r23, long r24, java.io.File r26, com.ahsim.demulation.GenesisRomWorldTacticalSpriteAssetProvider.ProgressListener r27, boolean r28, java.lang.String r29) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 426
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ahsim.demulation.GenesisRomWorldTacticalSpriteAssetProvider.extractInternal(java.io.InputStream, long, java.io.File, com.ahsim.demulation.GenesisRomWorldTacticalSpriteAssetProvider$ProgressListener, boolean, java.lang.String):com.ahsim.demulation.GenesisRomWorldTacticalSpriteAssetProvider$Result");
    }

    private static List<Asset> buildAssets(byte[] rom, boolean includeClassicPurchaseIcons) throws IOException {
        ArrayList<Asset> out = new ArrayList<>();
        out.add(new Asset("tactical/static_patterns_922_2047.bin", buildStaticPatternSlice(rom)));
        out.add(new Asset("tactical/visual_catalog.bin", buildVisualCatalog(rom)));
        out.add(new Asset("tactical/dynamic_patterns.bin", buildDynamicPatternCatalog(rom)));
        out.add(new Asset("tactical/direct_layouts.bin", buildDirectLayouts(rom)));
        ByteArrayOutputStream grid = new ByteArrayOutputStream(512);
        grid.write(copy(rom, GermanRomAddressMap.fixed(rom, PLACEMENT_GRID_GFX_A), 256));
        grid.write(copy(rom, GermanRomAddressMap.fixed(rom, PLACEMENT_GRID_GFX_B), 256));
        out.add(new Asset("tactical/placement_grid_patterns.bin", grid.toByteArray()));
        if (includeClassicPurchaseIcons) {
            out.add(new Asset(RomWorldTacticalSpriteAssetManifest.CLASSIC_PURCHASE_ICONS, buildClassicPurchaseIcons(rom)));
        }
        return out;
    }

    private static byte[] buildClassicPurchaseIcons(byte[] rom) throws IOException {
        ByteArrayOutputStream bytes = new ByteArrayOutputStream(164280);
        DataOutputStream out = new DataOutputStream(bytes);
        out.writeBytes("CPIC");
        out.writeShort(4);
        out.writeShort(32);
        out.writeShort(24);
        out.writeShort(PURCHASE_ICON_BYTES);
        out.writeShort(19);
        out.writeShort(27);
        out.writeShort(6);
        out.writeShort(19);
        out.writeShort(27);
        out.writeShort(19);
        out.writeShort(27);
        out.writeShort(96);
        out.writeShort(DETAIL_PREVIEW_HEIGHT);
        out.writeShort(DETAIL_PREVIEW_PACKED_BYTES);
        out.write(copy(rom, GermanRomAddressMap.fixed(rom, ORIGINAL_PALETTE), 128));
        out.write(copy(rom, GermanRomAddressMap.fixed(rom, HOUSE_PALETTE_FLAGS), 16));
        writePurchaseIconRecords(out, rom, STRUCTURE_PURCHASE_ICON_TABLE, 19, 1);
        writePurchaseIconRecords(out, rom, UNIT_PURCHASE_ICON_TABLE, 27, 3);
        writeInfoIconRecords(out, rom, STRUCTURE_INFO_POINTERS, 19);
        writeInfoIconRecords(out, rom, UNIT_INFO_POINTERS, 27);
        writePurchaseIconRecords(out, rom, 462096, 6, 3);
        writeDetailPreviewRecords(out, rom, STRUCTURE_DETAIL_PREVIEW_TABLE, 19);
        writeDetailPreviewRecords(out, rom, UNIT_DETAIL_PREVIEW_TABLE, 27);
        writeFremenIconRecord(out, rom, 0, FREMEN_GROUP_ICON);
        writeFremenIconRecord(out, rom, 1, FREMEN_SINGLE_ICON);
        out.flush();
        byte[] result = bytes.toByteArray();
        if (result.length != 164280) {
            throw new IOException("Classic icon pack v3 size mismatch");
        }
        return result;
    }

    private static void writeFremenIconRecord(DataOutputStream out, byte[] rom, int key, int canonicalOffset) throws IOException {
        int source = GermanRomAddressMap.fixed(rom, canonicalOffset);
        if (source < 0 || source > rom.length - PURCHASE_ICON_BYTES) {
            throw new IOException("Original Fremen icon outside authenticated BASE ROM");
        }
        out.writeByte(1);
        out.writeByte(3);
        out.writeShort(key);
        out.write(rom, source, PURCHASE_ICON_BYTES);
    }

    private static void writePurchaseIconRecords(DataOutputStream out, byte[] rom, int canonicalTable, int count, int paletteLine) throws IOException {
        int table = GermanRomAddressMap.fixed(rom, canonicalTable);
        if (table < 0 || table > rom.length - (count * 4)) {
            throw new IOException("Classic purchase icon table outside ROM");
        }
        byte[] empty = new byte[PURCHASE_ICON_BYTES];
        for (int type = 0; type < count; type++) {
            int pointer = (int) (be32u(rom, (type * 4) + table) & 16777215);
            boolean present = pointer != 0;
            out.writeByte(present ? 1 : 0);
            out.writeByte(paletteLine);
            out.writeShort(type);
            if (!present) {
                out.write(empty);
            } else {
                if (pointer < 0 || pointer > rom.length - PURCHASE_ICON_BYTES) {
                    throw new IOException("Classic purchase icon pointer outside ROM: type " + type);
                }
                out.write(rom, pointer, PURCHASE_ICON_BYTES);
            }
        }
    }

    private static void writeInfoIconRecords(DataOutputStream out, byte[] rom, int canonicalInfoPointers, int count) throws IOException {
        int infoTable;
        int visualTable;
        int visualTable2;
        int i = count;
        int infoTable2 = GermanRomAddressMap.fixed(rom, canonicalInfoPointers);
        int visualTable3 = GermanRomAddressMap.fixed(rom, VISUAL_TABLE);
        int i2 = PURCHASE_ICON_BYTES;
        byte[] empty = new byte[PURCHASE_ICON_BYTES];
        if (infoTable2 < 0 || infoTable2 > rom.length - (i * 4)) {
            throw new IOException("Classic info pointer table outside ROM");
        }
        int type = 0;
        while (type < i) {
            int info = (int) (be32u(rom, (type * 4) + infoTable2) & 16777215);
            if (info <= 0 || info > rom.length - 22) {
                throw new IOException("Classic info record outside ROM: type " + type);
            }
            int visualId = be16(rom, info + 20);
            boolean present = visualId != 0;
            out.writeByte(present ? 1 : 0);
            out.writeByte(128);
            out.writeShort(type);
            if (!present) {
                out.write(empty);
                infoTable = infoTable2;
                visualTable = visualTable3;
                visualTable2 = i2;
            } else {
                int visual = (visualId * 8) + visualTable3;
                if (visual < 0 || visual > rom.length - 8) {
                    throw new IOException("Classic info visual outside ROM: type " + type);
                }
                int source = (int) (be32u(rom, visual) & 16777215);
                int layout = (int) (be32u(rom, visual + 4) & 16777215);
                if (source <= 0 || source > rom.length - i2 || layout <= 0 || layout > rom.length - 14) {
                    throw new IOException("Classic info visual payload outside ROM: type " + type);
                }
                int pieceCount = be16(rom, layout) + 1;
                int size = be16(rom, layout + 8);
                int x = (short) be16(rom, layout + 12);
                int y = (short) be16(rom, layout + 6);
                int widthTiles = ((size >>> 10) & 3) + 1;
                infoTable = infoTable2;
                int infoTable3 = ((size >>> 8) & 3) + 1;
                visualTable = visualTable3;
                if (pieceCount != 1 || widthTiles != 4 || infoTable3 != 3 || x != 0 || y != 0) {
                    throw new IOException("Classic info visual geometry mismatch: type " + type);
                }
                visualTable2 = PURCHASE_ICON_BYTES;
                out.write(rom, source, PURCHASE_ICON_BYTES);
            }
            type++;
            i = count;
            i2 = visualTable2;
            visualTable3 = visualTable;
            infoTable2 = infoTable;
        }
    }

    private static void writeDetailPreviewRecords(DataOutputStream out, byte[] rom, int canonicalPointerTable, int count) throws IOException {
        int table = GermanRomAddressMap.fixed(rom, canonicalPointerTable);
        if (table < 0 || table > rom.length - (count * 4)) {
            throw new IOException("Classic detail preview table outside ROM");
        }
        byte[] emptyPalette = new byte[32];
        byte[] emptyPixels = new byte[DETAIL_PREVIEW_PACKED_BYTES];
        for (int type = 0; type < count; type++) {
            int record = (int) (be32u(rom, (type * 4) + table) & 16777215);
            boolean present = record != 0;
            if (present) {
                checkRange(rom, record, 202);
                int transferBytes = be16(rom, record + 200);
                present = transferBytes >= 32;
            }
            out.writeByte(present ? 1 : 0);
            out.writeByte(64);
            out.writeShort(type);
            if (!present) {
                out.write(emptyPalette);
                out.write(emptyPixels);
            } else {
                out.write(rom, record, 32);
                byte[] patterns = decompressPreviewStream(rom, record + 202);
                if ((patterns.length & 31) != 0 || patterns.length == 0) {
                    throw new IOException("Classic detail preview decoded pattern size mismatch: type " + type);
                }
                byte[] packed = renderDetailPreview4bpp(rom, record + 32, patterns, type);
                out.write(packed);
            }
        }
    }

    private static byte[] renderDetailPreview4bpp(byte[] rom, int mapOffset, byte[] patterns, int type) throws IOException {
        byte[] bArr = patterns;
        byte[] packed = new byte[DETAIL_PREVIEW_PACKED_BYTES];
        int patternCount = bArr.length / 32;
        int tileY = 0;
        while (tileY < 7) {
            int tileX = 0;
            while (tileX < 12) {
                int attr = be16(rom, mapOffset + (((tileY * 12) + tileX) * 2));
                int pattern = attr & 2047;
                boolean hFlip = (attr & 2048) != 0;
                boolean vFlip = (attr & DuneHackR82ScenarioRecordDecoder.MAX_RECORDS) != 0;
                if (pattern < 0 || pattern >= patternCount) {
                    throw new IOException("Classic detail preview pattern outside stream: type " + type);
                }
                int patternOffset = pattern * 32;
                int py = 0;
                while (true) {
                    if (py < 8) {
                        int sourceY = vFlip ? 7 - py : py;
                        int px = 0;
                        for (int i = 8; px < i; i = 8) {
                            int sourceX = hFlip ? 7 - px : px;
                            int sourceByte = bArr[patternOffset + (sourceY * 4) + (sourceX >>> 1)] & 255;
                            int colour = (sourceX & 1) == 0 ? sourceByte >>> 4 : sourceByte & 15;
                            int x = (tileX * 8) + px;
                            int y = (tileY * 8) + py;
                            int pixel = (y * 96) + x;
                            int dst = pixel >>> 1;
                            if ((pixel & 1) == 0) {
                                packed[dst] = (byte) (colour << 4);
                            } else {
                                packed[dst] = (byte) ((packed[dst] & 240) | colour);
                            }
                            px++;
                            bArr = patterns;
                        }
                        py++;
                        bArr = patterns;
                    }
                }
                tileX++;
                bArr = patterns;
            }
            tileY++;
            bArr = patterns;
        }
        return packed;
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x00cd, code lost:
    
        throw new java.io.IOException("Unaligned tactical sprite loader block");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static byte[] buildStaticPatternSlice(byte[] r24) throws java.io.IOException {
        /*
            r0 = r24
            r1 = 65536(0x10000, float:9.1835E-41)
            byte[] r1 = new byte[r1]
            r2 = 42124(0xa48c, float:5.9028E-41)
            int r2 = com.ahsim.demulation.GermanRomAddressMap.fixed(r0, r2)
            r3 = 0
            r4 = 0
            r5 = 2147483647(0x7fffffff, float:NaN)
            r6 = -1
        L13:
            long r7 = be32u(r0, r2)
            int r2 = r2 + 4
            r9 = 0
            int r11 = (r7 > r9 ? 1 : (r7 == r9 ? 0 : -1))
            r12 = 0
            r13 = 922(0x39a, float:1.292E-42)
            if (r11 != 0) goto L4d
            r7 = 36
            if (r3 != r7) goto L45
            r7 = 698(0x2ba, float:9.78E-43)
            if (r4 != r7) goto L45
            if (r5 != r13) goto L45
            r7 = 2047(0x7ff, float:2.868E-42)
            if (r6 != r7) goto L45
            r7 = 42416(0xa5b0, float:5.9437E-41)
            int r7 = com.ahsim.demulation.GermanRomAddressMap.fixed(r0, r7)
            if (r2 != r7) goto L45
            r7 = 36032(0x8cc0, float:5.0492E-41)
            byte[] r7 = new byte[r7]
            r8 = 29504(0x7340, float:4.1344E-41)
            int r9 = r7.length
            java.lang.System.arraycopy(r1, r8, r7, r12, r9)
            return r7
        L45:
            java.io.IOException r7 = new java.io.IOException
            java.lang.String r8 = "Tactical sprite loader coverage mismatch"
            r7.<init>(r8)
            throw r7
        L4d:
            long r14 = be32u(r0, r2)
            int r2 = r2 + 4
            r11 = 16
            long r16 = r7 >>> r11
            r18 = 65535(0xffff, double:3.23786E-319)
            r20 = r9
            long r9 = r16 & r18
            int r9 = (int) r9
            long r10 = r7 & r18
            int r10 = (int) r10
            int r11 = r10 * 2
            r16 = r9 & 31
            if (r16 != 0) goto Lc3
            r16 = r11 & 31
            if (r16 != 0) goto Lc3
            if (r11 <= 0) goto Lc3
            int r12 = r9 / 32
            int r17 = r11 / 32
            if (r12 < r13) goto Lb8
            int r13 = r12 + r17
            r18 = r2
            r2 = 2048(0x800, float:2.87E-42)
            if (r13 > r2) goto Lb6
            r22 = 16777215(0xffffff, double:8.2890456E-317)
            r13 = r3
            long r2 = r14 & r22
            int r2 = (int) r2
            r22 = 2147483648(0x80000000, double:1.0609978955E-314)
            long r22 = r14 & r22
            int r3 = (r22 > r20 ? 1 : (r22 == r20 ? 0 : -1))
            if (r3 == 0) goto L93
            byte[] r3 = copy(r0, r2, r11)
            goto L97
        L93:
            byte[] r3 = decompress(r0, r2, r11)
        L97:
            int r0 = r12 * 32
            r19 = r2
            r2 = 0
            java.lang.System.arraycopy(r3, r2, r1, r0, r11)
            int r0 = r13 + 1
            int r4 = r4 + r17
            int r5 = java.lang.Math.min(r5, r12)
            int r2 = r12 + r17
            int r2 = r2 + (-1)
            int r6 = java.lang.Math.max(r6, r2)
            r3 = r0
            r2 = r18
            r0 = r24
            goto L13
        Lb6:
            r13 = r3
            goto Lbb
        Lb8:
            r18 = r2
            r13 = r3
        Lbb:
            java.io.IOException r0 = new java.io.IOException
            java.lang.String r2 = "Tactical sprite loader block outside VRAM media range"
            r0.<init>(r2)
            throw r0
        Lc3:
            r18 = r2
            r13 = r3
            java.io.IOException r0 = new java.io.IOException
            java.lang.String r2 = "Unaligned tactical sprite loader block"
            r0.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ahsim.demulation.GenesisRomWorldTacticalSpriteAssetProvider.buildStaticPatternSlice(byte[]):byte[]");
    }

    private static byte[] buildVisualCatalog(byte[] rom) throws IOException {
        int i;
        ByteArrayOutputStream bytes = new ByteArrayOutputStream(8192);
        DataOutputStream out = new DataOutputStream(bytes);
        out.writeBytes("DVIS");
        out.writeShort(1);
        out.writeShort(0);
        int count = 0;
        for (int visualId = 0; visualId < VISUAL_ID_LIMIT; visualId++) {
            int entry = GermanRomAddressMap.fixed(rom, VISUAL_TABLE) + (visualId * 8);
            long sourceWord = be32u(rom, entry);
            int layout = (int) (be32u(rom, entry + 4) & 16777215);
            if (isValidLayout(rom, layout)) {
                int pieceCount = be16(rom, layout) + 1;
                out.writeShort(visualId);
                out.writeShort(pieceCount);
                if (((sourceWord >>> 24) & 255) == 128) {
                    i = 1;
                } else {
                    i = 0;
                }
                out.writeShort(i);
                out.writeShort(0);
                out.write(copy(rom, layout + 2, pieceCount * 12));
                count++;
            }
        }
        out.flush();
        byte[] result = bytes.toByteArray();
        result[6] = (byte) ((count >>> 8) & 255);
        result[7] = (byte) (count & 255);
        if (count != EXPECTED_VALID_VISUALS) {
            throw new IOException("Unexpected tactical visual catalog size");
        }
        return result;
    }

    private static byte[] buildDynamicPatternCatalog(byte[] rom) throws IOException {
        ByteArrayOutputStream bytes;
        int i;
        ByteArrayOutputStream bytes2 = new ByteArrayOutputStream(RazorVramPatternLoader.METATILE_BANK_BYTES);
        DataOutputStream out = new DataOutputStream(bytes2);
        out.writeBytes("DDYN");
        int i2 = 1;
        out.writeShort(1);
        out.writeShort(0);
        int count = 0;
        int visualId = 0;
        while (visualId < VISUAL_ID_LIMIT) {
            int entry = GermanRomAddressMap.fixed(rom, VISUAL_TABLE) + (visualId * 8);
            long sourceWord = be32u(rom, entry);
            if (((sourceWord >>> 24) & 255) == 128) {
                long j = 16777215;
                int layout = (int) (be32u(rom, entry + 4) & 16777215);
                if (isValidLayout(rom, layout)) {
                    int pieceCount = be16(rom, layout) + i2;
                    int minPattern = Integer.MAX_VALUE;
                    int maxPattern = -1;
                    i = i2;
                    int i3 = 0;
                    while (i3 < pieceCount) {
                        int piece = layout + 2 + (i3 * 12);
                        long j2 = j;
                        int size = be16(rom, piece + 6);
                        int attr = be16(rom, piece + 8);
                        int wt = ((size >>> 10) & 3) + 1;
                        int ht = ((size >>> 8) & 3) + 1;
                        int first = attr & 2047;
                        minPattern = Math.min(minPattern, first);
                        maxPattern = Math.max(maxPattern, (first + (wt * ht)) - 1);
                        i3++;
                        j = j2;
                        bytes2 = bytes2;
                    }
                    bytes = bytes2;
                    long j3 = j;
                    if (maxPattern < minPattern) {
                        throw new IOException("Empty dynamic tactical layout");
                    }
                    int patternCount = (maxPattern - minPattern) + 1;
                    int source = (int) (sourceWord & j3);
                    out.writeShort(visualId);
                    out.writeShort(minPattern);
                    out.writeShort(patternCount);
                    out.writeShort(0);
                    out.write(copy(rom, source, patternCount * 32));
                    count++;
                    visualId++;
                    i2 = i;
                    bytes2 = bytes;
                }
            }
            bytes = bytes2;
            i = i2;
            visualId++;
            i2 = i;
            bytes2 = bytes;
        }
        out.flush();
        byte[] result = bytes2.toByteArray();
        result[6] = (byte) ((count >>> 8) & 255);
        result[7] = (byte) (count & 255);
        if (count == EXPECTED_DYNAMIC_VISUALS) {
            return result;
        }
        throw new IOException("Unexpected dynamic tactical visual count");
    }

    private static byte[] buildDirectLayouts(byte[] rom) throws IOException {
        ByteArrayOutputStream bytes = new ByteArrayOutputStream(8192);
        DataOutputStream out = new DataOutputStream(bytes);
        out.writeBytes("DDIR");
        out.writeShort(1);
        out.writeShort(EXPECTED_DIRECT_LAYOUTS);
        int count = 0;
        for (int i = 0; i < VICTORY_FLYOVER_LAYOUTS.length; i++) {
            writeDirectLayout(out, rom, 1, i, GermanRomAddressMap.fixed(rom, VICTORY_FLYOVER_LAYOUTS[i]));
            count++;
        }
        for (int i2 = 0; i2 < 64; i2++) {
            writeDirectLayout(out, rom, 2, i2, GermanRomAddressMap.fixed(rom, TANK_COMPOSITE_TABLE) + (i2 * TRACKED_COMPOSITE_STRIDE));
            count++;
        }
        for (int i3 = 0; i3 < 64; i3++) {
            writeDirectLayout(out, rom, 3, i3, GermanRomAddressMap.fixed(rom, SIEGE_TANK_COMPOSITE_TABLE) + (i3 * TRACKED_COMPOSITE_STRIDE));
            count++;
        }
        for (int i4 = 0; i4 < 24; i4++) {
            int harvesterTable = GermanRomAddressMap.fixed(rom, HARVESTER_EFFECT_LAYOUT_TABLE);
            int pointer = (int) (be32u(rom, (i4 * 4) + harvesterTable) & 16777215);
            writeDirectLayout(out, rom, 4, i4, pointer);
            count++;
        }
        out.flush();
        if (count != EXPECTED_DIRECT_LAYOUTS) {
            throw new IOException("Unexpected direct tactical layout count");
        }
        return bytes.toByteArray();
    }

    private static void writeDirectLayout(DataOutputStream out, byte[] rom, int kind, int index, int layout) throws IOException {
        if (!isValidLayout(rom, layout)) {
            throw new IOException("Invalid direct tactical layout");
        }
        int pieceCount = be16(rom, layout) + 1;
        out.writeByte(kind);
        out.writeByte(index);
        out.writeShort(pieceCount);
        out.writeShort(0);
        out.writeShort(0);
        out.write(copy(rom, layout + 2, pieceCount * 12));
    }

    private static boolean isValidLayout(byte[] rom, int layout) throws IOException {
        int pieceCount;
        return layout > 0 && layout <= rom.length + (-2) && (pieceCount = be16(rom, layout) + 1) >= 1 && pieceCount <= 32 && layout <= (rom.length + (-2)) - (pieceCount * 12);
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0128, code lost:
    
        throw new java.io.IOException("Classic detail absolute-copy range error");
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00ef, code lost:
    
        throw new java.io.IOException("Classic detail long-copy range error");
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x005c, code lost:
    
        throw new java.io.IOException("Classic detail short-copy range error");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static byte[] decompressPreviewStream(byte[] r11, int r12) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 305
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ahsim.demulation.GenesisRomWorldTacticalSpriteAssetProvider.decompressPreviewStream(byte[], int):byte[]");
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x014c, code lost:
    
        throw new java.io.IOException("Tactical long-copy range error");
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x00d2, code lost:
    
        throw new java.io.IOException("Tactical absolute-copy range error");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static byte[] decompress(byte[] r10, int r11, int r12) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 341
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ahsim.demulation.GenesisRomWorldTacticalSpriteAssetProvider.decompress(byte[], int, int):byte[]");
    }

    private static byte[] readAll(InputStream input, long knownRomSize) throws IOException {
        int initial = (knownRomSize <= 0 || knownRomSize >= 16777216) ? 8192 : (int) knownRomSize;
        ByteArrayOutputStream out = new ByteArrayOutputStream(initial);
        byte[] buffer = new byte[8192];
        while (true) {
            int count = input.read(buffer);
            if (count != -1) {
                if (count != 0) {
                    if (out.size() > 16777216 - count) {
                        throw new IOException("ROM is unexpectedly large");
                    }
                    out.write(buffer, 0, count);
                }
            } else {
                byte[] rom = out.toByteArray();
                if (knownRomSize > 0 && knownRomSize != rom.length) {
                    throw new IOException("ROM size changed while reading");
                }
                return rom;
            }
        }
    }

    private static byte[] copy(byte[] data, int offset, int length) throws IOException {
        checkRange(data, offset, length);
        byte[] out = new byte[length];
        System.arraycopy(data, offset, out, 0, length);
        return out;
    }

    private static int be16(byte[] data, int offset) throws IOException {
        checkRange(data, offset, 2);
        return ((data[offset] & 255) << 8) | (data[offset + 1] & 255);
    }

    private static long be32u(byte[] data, int offset) throws IOException {
        checkRange(data, offset, 4);
        return ((data[offset] & 255) << 24) | ((data[offset + 1] & 255) << 16) | ((data[offset + 2] & 255) << 8) | (data[offset + 3] & 255);
    }

    private static void checkRange(byte[] data, int offset, int length) throws IOException {
        if (offset < 0 || length < 0 || offset > data.length - length) {
            throw new IOException("ROM tactical-media offset outside file: " + offset + "+" + length);
        }
    }

    private static File safeChild(File root, String relativePath) throws IOException {
        File canonicalRoot = root.getCanonicalFile();
        File child = new File(canonicalRoot, relativePath).getCanonicalFile();
        String rootPath = canonicalRoot.getPath();
        String childPath = child.getPath();
        if (!childPath.equals(rootPath) && !childPath.startsWith(rootPath + File.separator)) {
            throw new IOException("Asset path escaped staging root");
        }
        return child;
    }

    private static String sha256(byte[] data) throws IOException {
        try {
            MessageDigest digest = MessageDigest.getInstance("SHA-256");
            byte[] hash = digest.digest(data);
            StringBuilder out = new StringBuilder(64);
            for (byte b : hash) {
                out.append(String.format(Locale.US, "%02x", Integer.valueOf(b & 255)));
            }
            return out.toString();
        } catch (NoSuchAlgorithmException e) {
            throw new IOException("SHA-256 unavailable", e);
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
