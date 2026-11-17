package com.ahsim.demulation;

import com.ahsim.demulation.RomRussianLocalizationAssetManifest;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;

/* loaded from: classes2.dex */
public final class GenesisRomRussianLocalizationAssetProvider {
    private static final int ENDING_TEXT_STREAM = 71984;
    private static final int HOUSE_MISSION_TABLE = 556856;
    private static final int MAX_ROM_BYTES = 16777216;
    private static final int MENTAT_FONT_LOADER_POINTER_RU = 154220;
    private static final int RESULT_COMMON_PTRS = 667264;
    private static final int RESULT_FONT = 330804;
    private static final int RESULT_HOUSE_LABELS_RU = 682365;
    private static final int RESULT_OVERLAY = 679310;
    private static final int RESULT_PASSWORD_OVERLAY_RU = 758546;
    private static final int RESULT_PASSWORD_RECORDS = 557348;
    private static final int RESULT_RANK_NAMES = 682210;
    private static final int RESULT_THRESHOLDS = 682194;
    private static final int RUSSIAN_SHARED_FONT_STREAM = 1044192;
    private static final int STRUCTURE_INFO_POINTERS = 440660;
    private static final int STRUCTURE_NAME_COUNT = 19;
    private static final int TITLE_FONT_LOADER_POINTER_RU = 105048;
    private static final int TUTORIAL_CHAR_MAP = 273104;
    private static final int TUTORIAL_FONT = 273666;
    private static final int TUTORIAL_FONT_BYTES = 5408;
    private static final int TUTORIAL_SCENE_TABLE = 268002;
    private static final int UNIT_INFO_POINTERS = 443836;
    private static final int UNIT_NAME_COUNT = 27;
    private static final int[] TUTORIAL_SCRIPT_STARTS = {269128, 269186, 269264, 270294, 271308, 272694};
    private static final Charset UTF8 = Charset.forName("UTF-8");

    public static final class Result {
        public final int assetCount;
        public final int glyphBitmapCount;
        public final long payloadBytes;
        public final String profileId;
        public final String sourceSha256;
        public final File stagedRoot;
        public final int textCount;

        Result(File stagedRoot, int assetCount, int textCount, int glyphBitmapCount, long payloadBytes, String sourceSha256, String profileId) {
            this.stagedRoot = stagedRoot;
            this.assetCount = assetCount;
            this.textCount = textCount;
            this.glyphBitmapCount = glyphBitmapCount;
            this.payloadBytes = payloadBytes;
            this.sourceSha256 = sourceSha256;
            this.profileId = profileId;
        }
    }

    private GenesisRomRussianLocalizationAssetProvider() {
    }

    public static Result extract(InputStream input, long knownRomSize, File stagingRoot) throws IOException {
        if (input == null) {
            throw new IOException("Translation ROM stream is unavailable");
        }
        if (stagingRoot == null) {
            throw new IOException("Localization staging directory is unavailable");
        }
        if (knownRomSize > 16777216) {
            throw new IOException("Translation ROM is unexpectedly large");
        }
        byte[] rom = readAll(input, knownRomSize);
        if (rom.length != 1048576) {
            throw new IOException("Audited Russian translation must be exactly 1 MiB");
        }
        String sourceSha = sha256(rom);
        if (!"4d93c48957cc81fc49a6edff6353787e5d32eb5e2c86963182fba918a45e906a".equals(sourceSha)) {
            throw new IOException("Translation ROM fingerprint is not the audited Shedevr/Lipetsk build");
        }
        List<String> genericPaths = new ArrayList<>();
        List<String> directPaths = new ArrayList<>();
        List<String> mentatPaths = new ArrayList<>();
        for (RomRussianLocalizationAssetManifest.Entry e : RomRussianLocalizationAssetManifest.entries()) {
            if (!RomRussianLocalizationAssetManifest.HUD_OBJECT_NAMES.equals(e.relativePath) && !"frontend/direct/title_font.bin".equals(e.relativePath)) {
                if (e.relativePath.startsWith("frontend/direct/")) {
                    directPaths.add(e.relativePath);
                } else if (e.relativePath.startsWith("frontend/mentat/")) {
                    mentatPaths.add(e.relativePath);
                } else if (e.relativePath.startsWith("frontend/")) {
                    genericPaths.add(e.relativePath);
                }
            }
        }
        LinkedHashMap<String, byte[]> decoded = new LinkedHashMap<>();
        decoded.putAll(GenesisRomFrontendAssetProvider.decodeSelectedAssets(rom, genericPaths));
        decoded.putAll(GenesisRomFrontendDirectAssetProvider.decodeSelectedAssets(rom, directPaths));
        decoded.put("frontend/direct/title_font.bin", decodeRussianSharedFont(rom));
        decoded.putAll(GenesisRomMentatAssetProvider.decodeSelectedAssets(rom, mentatPaths));
        decoded.put("content/mission/presentation_text_v1.bin", decodeMissionPresentationText(rom));
        decodeTutorialLocalization(rom, decoded);
        decodeMissionResultLocalization(rom, decoded);
        decodeEndingLocalization(rom, decoded);
        decoded.put(RomRussianLocalizationAssetManifest.HUD_OBJECT_NAMES, decodeHudObjectNames(rom));
        deleteRecursively(stagingRoot);
        if (!stagingRoot.mkdirs() && !stagingRoot.isDirectory()) {
            throw new IOException("Could not create localization staging directory");
        }
        try {
            for (RomRussianLocalizationAssetManifest.Entry expected : RomRussianLocalizationAssetManifest.entries()) {
                byte[] data = decoded.get(expected.relativePath);
                if (data == null) {
                    throw new IOException("Localization asset missing: " + expected.relativePath);
                }
                if (data.length == expected.length && expected.sha256.equals(sha256(data))) {
                    File out = safeChild(stagingRoot, expected.relativePath);
                    File parent = out.getParentFile();
                    if (parent != null && !parent.mkdirs() && !parent.isDirectory()) {
                        throw new IOException("Could not create localization asset directory");
                    }
                    FileOutputStream stream = new FileOutputStream(out);
                    try {
                        stream.write(data);
                        stream.getFD().sync();
                        stream.close();
                    } finally {
                    }
                } else {
                    throw new IOException("Localization asset verification failed: " + expected.relativePath);
                }
            }
            return new Result(stagingRoot, RomRussianLocalizationAssetManifest.entries().size(), RomRussianLocalizationAssetManifest.count(RomRussianLocalizationAssetManifest.Kind.TEXT), RomRussianLocalizationAssetManifest.count(RomRussianLocalizationAssetManifest.Kind.GLYPH_BITMAP), RomRussianLocalizationAssetManifest.payloadBytes(), sourceSha, "translation_ru_shedevr_lipetsk_usa");
        } catch (IOException | RuntimeException e2) {
            deleteRecursively(stagingRoot);
            throw e2;
        }
    }

    static byte[] decodeMissionPresentationText(byte[] rom) throws IOException {
        ByteArrayOutputStream out = new ByteArrayOutputStream(16000);
        for (int romHouse = 0; romHouse < 3; romHouse++) {
            int base = u24(be32(rom, (romHouse * 4) + HOUSE_MISSION_TABLE));
            for (int mission = 0; mission < 9; mission++) {
                int record = (mission * 16) + base;
                for (int field = 0; field < 4; field++) {
                    int pointer = u24(be32(rom, (field * 4) + record));
                    out.write(readCStringBytes(rom, pointer, DuneHackR82ScenarioRecordDecoder.MAX_RECORDS));
                }
            }
        }
        return out.toByteArray();
    }

    private static void decodeTutorialLocalization(byte[] rom, LinkedHashMap<String, byte[]> out) throws IOException {
        int[] patternScenes = {0, 1, 3, 4, 6, 9, 11};
        for (int scene : patternScenes) {
            int table = (scene * 12) + TUTORIAL_SCENE_TABLE;
            int patternPtr = be32(rom, table);
            if (patternPtr == 0) {
                throw new IOException("Translated tutorial pattern pointer missing for scene " + scene);
            }
            out.put(String.format(Locale.US, "tutorial/scenes/scene%02d_patterns.bin", Integer.valueOf(scene)), loadPatternTable(rom, patternPtr));
        }
        int[] plane0Scenes = {0, 1, 3, 6, 7, 9, 10, 11};
        for (int scene2 : plane0Scenes) {
            int source = be32(rom, (scene2 * 12) + TUTORIAL_SCENE_TABLE + 4);
            if (source == 0) {
                throw new IOException("Translated tutorial plane0 pointer missing for scene " + scene2);
            }
            out.put(String.format(Locale.US, "tutorial/scenes/scene%02d_plane0.delta", Integer.valueOf(scene2)), decompressExact(rom, source));
        }
        out.put("tutorial/text/font.bin", copy(rom, TUTORIAL_FONT, TUTORIAL_FONT_BYTES));
        out.put("content/tutorial/exact_text_v1.bin", decodeTutorialExactText(rom));
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0020, code lost:
    
        r4 = r4 + 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static byte[] decodeTutorialExactText(byte[] r11) throws java.io.IOException {
        /*
            java.io.ByteArrayOutputStream r0 = new java.io.ByteArrayOutputStream
            r1 = 1429(0x595, float:2.002E-42)
            r0.<init>(r1)
            r1 = 0
            int[] r2 = com.ahsim.demulation.GenesisRomRussianLocalizationAssetProvider.TUTORIAL_SCRIPT_STARTS
            int r3 = r2.length
            r4 = 0
        Lc:
            if (r4 >= r3) goto L64
            r5 = r2[r4]
            r6 = r5
            r7 = 0
        L12:
            int r7 = r7 + 1
            r8 = 2048(0x800, float:2.87E-42)
            if (r7 > r8) goto L5c
            int r8 = be16(r11, r6)
            int r6 = r6 + 2
            if (r8 != 0) goto L23
            int r4 = r4 + 1
            goto Lc
        L23:
            r9 = 48
            if (r8 != r9) goto L3b
            r9 = 256(0x100, float:3.59E-43)
            byte[] r9 = readTutorialCStringBytes(r11, r6, r9)
            r0.write(r9)
            int r1 = r1 + 1
            int r10 = r9.length
            int r6 = r6 + r10
            r10 = r6 & 1
            if (r10 == 0) goto L12
            int r6 = r6 + 1
            goto L12
        L3b:
            int r9 = tutorialArgumentBytes(r8)
            if (r9 < 0) goto L46
            checkRange(r11, r6, r9)
            int r6 = r6 + r9
            goto L12
        L46:
            java.io.IOException r2 = new java.io.IOException
            java.util.Locale r3 = java.util.Locale.US
            java.lang.Integer r4 = java.lang.Integer.valueOf(r8)
            java.lang.Object[] r4 = new java.lang.Object[]{r4}
            java.lang.String r10 = "Unsupported translated tutorial opcode %04X"
            java.lang.String r3 = java.lang.String.format(r3, r10, r4)
            r2.<init>(r3)
            throw r2
        L5c:
            java.io.IOException r2 = new java.io.IOException
            java.lang.String r3 = "Translated tutorial scan guard"
            r2.<init>(r3)
            throw r2
        L64:
            r2 = 25
            if (r1 != r2) goto L79
            r2 = 273104(0x42ad0, float:3.827E-40)
            r3 = 128(0x80, float:1.8E-43)
            byte[] r2 = copy(r11, r2, r3)
            r0.write(r2)
            byte[] r2 = r0.toByteArray()
            return r2
        L79:
            java.io.IOException r2 = new java.io.IOException
            java.lang.String r3 = "Translated tutorial message count mismatch"
            r2.<init>(r3)
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ahsim.demulation.GenesisRomRussianLocalizationAssetProvider.decodeTutorialExactText(byte[]):byte[]");
    }

    private static void decodeMissionResultLocalization(byte[] rom, LinkedHashMap<String, byte[]> out) throws IOException {
        byte[] common = new byte[28672];
        byte[] scratch = new byte[65536];
        for (int i = 0; i < 7; i++) {
            int ptr = u24(be32(rom, (i * 4) + RESULT_COMMON_PTRS));
            int produced = decompressInto(rom, ptr, scratch);
            if (produced <= 0) {
                throw new IOException("Translated result common pattern decode empty");
            }
            System.arraycopy(scratch, 0, common, i * DuneHackR82ScenarioRecordDecoder.MAX_RECORDS, DuneHackR82ScenarioRecordDecoder.MAX_RECORDS);
        }
        out.put("mission_result/common_patterns.bin", common);
        out.put("mission_result/font.bin", copy(rom, RESULT_FONT, DuneHackR82ScenarioRecordDecoder.MAX_RECORDS));
        out.put("mission_result/overlay.map", decompressPrefix(rom, RESULT_OVERLAY, 3584));
        out.put("mission_result/password_overlay.map", decompressPrefix(rom, RESULT_PASSWORD_OVERLAY_RU, 1792));
        out.put("content/result/mission_result_data_v1.bin", decodeMissionResultExactData(rom));
    }

    static byte[] decodeMissionResultExactData(byte[] rom) throws IOException {
        ByteArrayOutputStream result = new ByteArrayOutputStream(493);
        result.write(copy(rom, RESULT_THRESHOLDS, 16));
        result.write(copy(rom, RESULT_RANK_NAMES, 153));
        result.write(copy(rom, RESULT_HOUSE_LABELS_RU, 27));
        for (int mission = 0; mission < 9; mission++) {
            for (int house = 0; house < 3; house++) {
                int record = (mission * 24) + RESULT_PASSWORD_RECORDS + (house * 8);
                int pointer = u24(be32(rom, record));
                byte[] password = readCStringBytes(rom, pointer, 32);
                if (password.length != 11) {
                    throw new IOException("Translated result password length mismatch");
                }
                result.write(password);
            }
        }
        return result.toByteArray();
    }

    private static byte[] decodeRussianSharedFont(byte[] rom) throws IOException {
        if (be32(rom, TITLE_FONT_LOADER_POINTER_RU) != RUSSIAN_SHARED_FONT_STREAM || be32(rom, MENTAT_FONT_LOADER_POINTER_RU) != RUSSIAN_SHARED_FONT_STREAM) {
            throw new IOException("Translated title/Mentat font-loader anchors changed");
        }
        if (be16(rom, RUSSIAN_SHARED_FONT_STREAM) != 4096) {
            throw new IOException("Translated shared Russian font anchor changed");
        }
        byte[] font = new byte[65536];
        int fontBytes = decompressInto(rom, 1044194, font);
        if (fontBytes != 4096) {
            throw new IOException("Translated shared Russian font decode size mismatch");
        }
        return Arrays.copyOf(font, DuneHackR82ScenarioRecordDecoder.MAX_RECORDS);
    }

    private static void decodeEndingLocalization(byte[] rom, LinkedHashMap<String, byte[]> out) throws IOException {
        out.put("ending/font.bin", decodeRussianSharedFont(rom));
        out.put("content/ending/ending_text_v1.bin", decodeEndingText(rom));
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0045, code lost:
    
        throw new java.io.IOException("Translated ending text contains unsupported byte");
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0048, code lost:
    
        if (r2 == false) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0053, code lost:
    
        return copy(r6, com.ahsim.demulation.GenesisRomRussianLocalizationAssetProvider.ENDING_TEXT_STREAM, r0 - com.ahsim.demulation.GenesisRomRussianLocalizationAssetProvider.ENDING_TEXT_STREAM);
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x005b, code lost:
    
        throw new java.io.IOException("Translated ending text is unterminated");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static byte[] decodeEndingText(byte[] r6) throws java.io.IOException {
        /*
            r0 = 71984(0x11930, float:1.00871E-40)
            int r1 = r6.length
            r2 = 76080(0x12930, float:1.06611E-40)
            int r1 = java.lang.Math.min(r1, r2)
            r2 = 0
        Lc:
            if (r0 >= r1) goto L48
            int r3 = r0 + 1
            r0 = r6[r0]
            r4 = 255(0xff, float:3.57E-43)
            r0 = r0 & r4
            if (r0 != 0) goto L1a
            r2 = 1
            r0 = r3
            goto L48
        L1a:
            if (r0 != r4) goto L31
            if (r3 >= r1) goto L29
            int r5 = r3 + 1
            r3 = r6[r3]
            r3 = r3 & r4
            r4 = 3
            if (r3 > r4) goto L28
            r0 = r5
            goto L47
        L28:
            r3 = r5
        L29:
            java.io.IOException r4 = new java.io.IOException
            java.lang.String r5 = "Translated ending palette marker mismatch"
            r4.<init>(r5)
            throw r4
        L31:
            r4 = 10
            if (r0 == r4) goto L46
            r4 = 32
            if (r0 < r4) goto L3e
            r4 = 126(0x7e, float:1.77E-43)
            if (r0 > r4) goto L3e
            goto L46
        L3e:
            java.io.IOException r4 = new java.io.IOException
            java.lang.String r5 = "Translated ending text contains unsupported byte"
            r4.<init>(r5)
            throw r4
        L46:
            r0 = r3
        L47:
            goto Lc
        L48:
            if (r2 == 0) goto L54
            r3 = 71984(0x11930, float:1.00871E-40)
            int r4 = r0 - r3
            byte[] r3 = copy(r6, r3, r4)
            return r3
        L54:
            java.io.IOException r3 = new java.io.IOException
            java.lang.String r4 = "Translated ending text is unterminated"
            r3.<init>(r4)
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ahsim.demulation.GenesisRomRussianLocalizationAssetProvider.decodeEndingText(byte[]):byte[]");
    }

    static byte[] decodeHudObjectNames(byte[] rom) throws IOException {
        ByteArrayOutputStream names = new ByteArrayOutputStream(700);
        decodeHudObjectNameTable(rom, UNIT_INFO_POINTERS, 27, names);
        decodeHudObjectNameTable(rom, STRUCTURE_INFO_POINTERS, 19, names);
        return names.toByteArray();
    }

    private static void decodeHudObjectNameTable(byte[] rom, int pointerTable, int count, ByteArrayOutputStream out) throws IOException {
        for (int type = 0; type < count; type++) {
            int record = u24(be32(rom, (type * 4) + pointerTable));
            checkRange(rom, record + 2, 4);
            int namePointer = u24(be32(rom, record + 2));
            byte[] raw = readCStringBytes(rom, namePointer, 64);
            String decoded = decodeRussianHudName(raw);
            byte[] utf8 = decoded.getBytes(UTF8);
            out.write(utf8, 0, utf8.length);
            out.write(0);
        }
    }

    private static String decodeRussianHudName(byte[] rawWithZero) throws IOException {
        int n = rawWithZero.length;
        if (n <= 0 || rawWithZero[n - 1] != 0) {
            throw new IOException("Translated HUD name is unterminated");
        }
        String raw = new String(rawWithZero, 0, n - 1, Charset.forName("US-ASCII")).trim();
        if ("IX".equals(raw)) {
            return "IX";
        }
        StringBuilder out = new StringBuilder(raw.length());
        for (int i = 0; i < raw.length(); i++) {
            char ch = raw.charAt(i);
            switch (ch) {
                case ' ':
                case '-':
                case '.':
                case '2':
                    out.append(ch);
                    break;
                case 'A':
                    out.append((char) 1040);
                    break;
                case RomRuntimeNativeDataAssets.VISUAL_INDEX_OFFSET /* 66 */:
                    out.append((char) 1042);
                    break;
                case 'C':
                    out.append((char) 1057);
                    break;
                case 'E':
                    out.append((char) 1045);
                    break;
                case 'H':
                    out.append((char) 1053);
                    break;
                case RazorSpriteBankAudit.VERIFIED_BLOCK_COUNT /* 73 */:
                    out.append('I');
                    break;
                case 'K':
                    out.append((char) 1050);
                    break;
                case 'M':
                    out.append((char) 1052);
                    break;
                case 'O':
                    out.append((char) 1054);
                    break;
                case 'P':
                    out.append((char) 1056);
                    break;
                case 'T':
                    out.append((char) 1058);
                    break;
                case 'X':
                    out.append((char) 1061);
                    break;
                case 'a':
                    out.append((char) 1065);
                    break;
                case 'b':
                    out.append((char) 1068);
                    break;
                case 'c':
                    out.append((char) 1040);
                    break;
                case 'd':
                    out.append((char) 1041);
                    break;
                case 'f':
                    out.append((char) 1043);
                    break;
                case 'g':
                    out.append((char) 1044);
                    break;
                case RazorSpriteSatObjectCallSiteTrace.SOURCE_BYTE_OFFSET /* 104 */:
                    out.append((char) 1069);
                    break;
                case 'i':
                    out.append((char) 1046);
                    break;
                case 'j':
                    out.append((char) 1047);
                    break;
                case 'l':
                    out.append((char) 1048);
                    break;
                case 'n':
                    out.append((char) 1049);
                    break;
                case 'q':
                    out.append((char) 1051);
                    break;
                case 'r':
                    out.append((char) 1071);
                    break;
                case 's':
                    out.append((char) 1055);
                    break;
                case RazorSpriteBankAudit.SOURCE_NON_MATCHED /* 117 */:
                    out.append((char) 1059);
                    break;
                case 'v':
                    out.append((char) 1060);
                    break;
                case 'w':
                    out.append((char) 1062);
                    break;
                case 'y':
                    out.append((char) 1063);
                    break;
                case 'z':
                    out.append((char) 1064);
                    break;
                default:
                    throw new IOException(String.format(Locale.US, "Unsupported translated HUD glyph code %02X in %s", Integer.valueOf(ch), raw));
            }
        }
        String decoded = out.toString().trim();
        if (decoded.length() == 0) {
            throw new IOException("Translated HUD name decoded empty");
        }
        return decoded;
    }

    private static byte[] loadPatternTable(byte[] rom, int tableOffset) throws IOException {
        int p = tableOffset;
        int bytes = 0;
        int guard = 0;
        while (true) {
            guard++;
            if (guard > 256) {
                throw new IOException("Translated tutorial pattern-table guard");
            }
            int flags = be16(rom, p);
            if (flags != 0) {
                bytes += (flags & 32767) * 32;
                p += 6;
            } else {
                byte[] result = new byte[bytes];
                byte[] scratch = new byte[65536];
                int p2 = tableOffset;
                int dst = 0;
                while (true) {
                    int flags2 = be16(rom, p2);
                    if (flags2 != 0) {
                        int pointer = u24(be32(rom, p2 + 2));
                        p2 += 6;
                        int n = (flags2 & 32767) * 32;
                        if ((32768 & flags2) != 0) {
                            int produced = decompressInto(rom, pointer, scratch);
                            if (produced <= 0) {
                                throw new IOException("Translated tutorial pattern decode empty");
                            }
                            if (n > scratch.length) {
                                throw new IOException("Translated tutorial pattern scratch overflow");
                            }
                            System.arraycopy(scratch, 0, result, dst, n);
                        } else {
                            checkRange(rom, pointer, n);
                            System.arraycopy(rom, pointer, result, dst, n);
                        }
                        dst += n;
                    } else {
                        return result;
                    }
                }
            }
        }
    }

    private static byte[] decompressExact(byte[] rom, int source) throws IOException {
        byte[] scratch = new byte[65536];
        int n = decompressInto(rom, source, scratch);
        return Arrays.copyOf(scratch, n);
    }

    private static byte[] decompressPrefix(byte[] rom, int source, int prefix) throws IOException {
        byte[] scratch = new byte[65536];
        int n = decompressInto(rom, source, scratch);
        if (n < prefix) {
            throw new IOException("Translated compressed asset is shorter than required prefix");
        }
        return Arrays.copyOf(scratch, prefix);
    }

    /* JADX WARN: Code restructure failed: missing block: B:54:0x00a0, code lost:
    
        throw new java.io.IOException("Translated resource absolute-copy range");
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0065, code lost:
    
        throw new java.io.IOException("Translated resource short-copy range");
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
        throw new UnsupportedOperationException("Method not decompiled: com.ahsim.demulation.GenesisRomRussianLocalizationAssetProvider.decompressInto(byte[], int, byte[]):int");
    }

    private static byte[] readCStringBytes(byte[] rom, int offset, int guard) throws IOException {
        if (offset < 0 || offset >= rom.length) {
            throw new IOException("Translation text pointer outside ROM");
        }
        int end = offset;
        int limit = Math.min(rom.length, offset + guard);
        while (end < limit && rom[end] != 0) {
            int c = rom[end] & 255;
            if (c < 32 || c > 126) {
                throw new IOException("Translation text contains unsupported byte");
            }
            end++;
        }
        if (end >= limit || end >= rom.length) {
            throw new IOException("Translation text is unterminated");
        }
        return copy(rom, offset, (end - offset) + 1);
    }

    private static byte[] readTutorialCStringBytes(byte[] rom, int offset, int guard) throws IOException {
        if (offset < 0 || offset >= rom.length) {
            throw new IOException("Translated tutorial text pointer outside ROM");
        }
        int end = offset;
        int limit = Math.min(rom.length, offset + guard);
        while (end < limit && rom[end] != 0) {
            int c = rom[end] & 255;
            if (c != 10 && (c < 32 || c > 126)) {
                throw new IOException("Translated tutorial text contains unsupported byte");
            }
            end++;
        }
        if (end >= limit || end >= rom.length) {
            throw new IOException("Translated tutorial text is unterminated");
        }
        return copy(rom, offset, (end - offset) + 1);
    }

    private static int tutorialArgumentBytes(int op) {
        switch (op) {
            case 2:
            case 4:
            case 6:
            case 10:
            case RomAssetBundleManifest.FORMAT_VERSION /* 18 */:
            case 24:
                return 2;
            case 8:
            case 14:
            case RazorCampaignMapSnapshot559.HEADER /* 20 */:
            case 26:
            case 28:
            case 30:
            case 32:
            case 36:
            case 40:
            case 42:
            case 46:
            case 50:
            case 52:
                return 0;
            case 12:
            case 16:
            case DuneHackR82cRazorCombatAudit.DAMAGE_ANIMATIONS /* 22 */:
            case 38:
            case 44:
                return 4;
            case 34:
                return 6;
            default:
                return -1;
        }
    }

    private static int be16(byte[] data, int offset) throws IOException {
        checkRange(data, offset, 2);
        return ((data[offset] & 255) << 8) | (data[offset + 1] & 255);
    }

    private static int be32(byte[] data, int offset) throws IOException {
        checkRange(data, offset, 4);
        return ((data[offset] & 255) << 24) | ((data[offset + 1] & 255) << 16) | ((data[offset + 2] & 255) << 8) | (data[offset + 3] & 255);
    }

    private static int u24(int value) {
        return 16777215 & value;
    }

    private static byte[] copy(byte[] data, int offset, int length) throws IOException {
        checkRange(data, offset, length);
        return Arrays.copyOfRange(data, offset, offset + length);
    }

    private static void checkRange(byte[] data, int offset, int length) throws IOException {
        if (data == null || offset < 0 || length < 0 || offset > data.length - length) {
            throw new IOException("Translation ROM range is invalid");
        }
    }

    private static void ensureOutput(byte[] out, int dst, int length) throws IOException {
        if (dst < 0 || length < 0 || dst > out.length - length) {
            throw new IOException("Translated resource output overrun");
        }
    }

    private static byte[] readAll(InputStream in, long knownSize) throws IOException {
        int initial = (knownSize <= 0 || knownSize > 16777216) ? 1048576 : (int) knownSize;
        ByteArrayOutputStream out = new ByteArrayOutputStream(initial);
        byte[] buf = new byte[65536];
        int total = 0;
        while (true) {
            int n = in.read(buf);
            if (n >= 0) {
                if (n != 0) {
                    total += n;
                    if (total > 16777216) {
                        throw new IOException("Translation ROM exceeds size limit");
                    }
                    out.write(buf, 0, n);
                }
            } else {
                return out.toByteArray();
            }
        }
    }

    static String sha256(byte[] data) throws IOException {
        try {
            MessageDigest md = MessageDigest.getInstance("SHA-256");
            byte[] digest = md.digest(data);
            StringBuilder sb = new StringBuilder(64);
            for (byte b : digest) {
                sb.append(String.format(Locale.US, "%02x", Integer.valueOf(b & 255)));
            }
            return sb.toString();
        } catch (NoSuchAlgorithmException e) {
            throw new IOException("SHA-256 unavailable", e);
        }
    }

    private static File safeChild(File root, String relative) throws IOException {
        File base = root.getCanonicalFile();
        File child = new File(base, relative).getCanonicalFile();
        if (!child.getPath().startsWith(base.getPath() + File.separator)) {
            throw new IOException("Localization path escapes staging root");
        }
        return child;
    }

    static void deleteRecursively(File file) throws IOException {
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
}
