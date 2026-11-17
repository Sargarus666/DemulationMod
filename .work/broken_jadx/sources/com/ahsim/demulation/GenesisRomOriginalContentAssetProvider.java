package com.ahsim.demulation;

import com.ahsim.demulation.RomOriginalContentAssetManifest;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* loaded from: classes2.dex */
public final class GenesisRomOriginalContentAssetProvider {
    private static final int ENDING_TEXT_STREAM = 71984;
    private static final int HOUSE_JOIN_POINTERS = 556412;
    private static final int HOUSE_MISSION_TABLE = 556856;
    private static final int MAX_ROM_BYTES = 16777216;
    private static final int RESULT_HOUSE_LABELS = 682364;
    private static final int RESULT_PASSWORD_RECORDS = 557348;
    private static final int RESULT_RANK_NAMES = 682210;
    private static final int RESULT_THRESHOLDS = 682194;
    private static final int ROM_IMAGE_BYTES = 1048576;
    private static final int TITLE_TEXT = 95220;
    private static final int TITLE_TEXT_BYTES = 36;
    private static final int TUTORIAL_CHAR_MAP = 273104;
    private static final int TUTORIAL_CHAR_MAP_BYTES = 128;
    private static final int TUTORIAL_MESSAGE_COUNT = 25;
    private static final int[] TUTORIAL_SCRIPT_STARTS = {269128, 269186, 269264, 270294, 271308, 272694};

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

    private GenesisRomOriginalContentAssetProvider() {
    }

    public static Result extract(InputStream input, long knownRomSize, File stagingRoot, ProgressListener listener) throws IOException {
        return extract(input, knownRomSize, stagingRoot, listener, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0077 A[Catch: RuntimeException -> 0x00f4, IOException | RuntimeException -> 0x00f6, TryCatch #4 {IOException | RuntimeException -> 0x00f6, blocks: (B:17:0x0049, B:19:0x004f, B:21:0x005f, B:26:0x0077, B:29:0x007d, B:31:0x008b, B:33:0x0091, B:36:0x00a6, B:40:0x00b8, B:42:0x00c4, B:54:0x00dd, B:53:0x00da, B:56:0x009a, B:57:0x00a3, B:62:0x00de, B:64:0x00e6, B:65:0x00e9), top: B:16:0x0049 }] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x007d A[Catch: RuntimeException -> 0x00f4, IOException | RuntimeException -> 0x00f6, TryCatch #4 {IOException | RuntimeException -> 0x00f6, blocks: (B:17:0x0049, B:19:0x004f, B:21:0x005f, B:26:0x0077, B:29:0x007d, B:31:0x008b, B:33:0x0091, B:36:0x00a6, B:40:0x00b8, B:42:0x00c4, B:54:0x00dd, B:53:0x00da, B:56:0x009a, B:57:0x00a3, B:62:0x00de, B:64:0x00e6, B:65:0x00e9), top: B:16:0x0049 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.ahsim.demulation.GenesisRomOriginalContentAssetProvider.Result extract(java.io.InputStream r21, long r22, java.io.File r24, com.ahsim.demulation.GenesisRomOriginalContentAssetProvider.ProgressListener r25, java.lang.String r26) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 283
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ahsim.demulation.GenesisRomOriginalContentAssetProvider.extract(java.io.InputStream, long, java.io.File, com.ahsim.demulation.GenesisRomOriginalContentAssetProvider$ProgressListener, java.lang.String):com.ahsim.demulation.GenesisRomOriginalContentAssetProvider$Result");
    }

    public static Result extractTutorialContent(InputStream input, long knownRomSize, File stagingRoot, ProgressListener listener) throws IOException {
        if (input == null) {
            throw new IOException("ROM stream is unavailable");
        }
        if (stagingRoot == null) {
            throw new IOException("Original-content staging is unavailable");
        }
        if (knownRomSize > 16777216) {
            throw new IOException("ROM is unexpectedly large");
        }
        byte[] rom = readAll(input, knownRomSize);
        if (rom.length < ROM_IMAGE_BYTES) {
            throw new IOException("ROM is too small for tutorial content");
        }
        byte[] tutorial = buildTutorialExactAsset(rom);
        RomOriginalContentAssetManifest.Entry expected = RomOriginalContentAssetManifest.stageQEntries().get(0);
        deleteRecursively(stagingRoot);
        if (!stagingRoot.mkdirs() && !stagingRoot.isDirectory()) {
            throw new IOException("Could not create tutorial-content staging");
        }
        ArrayList<String> mismatches = new ArrayList<>();
        if (tutorial.length == expected.length && expected.sha256.equalsIgnoreCase(sha256(tutorial))) {
            File out = safeChild(stagingRoot, expected.relativePath);
            File parent = out.getParentFile();
            if (parent != null && !parent.mkdirs() && !parent.isDirectory()) {
                throw new IOException("Could not create tutorial-content staging directory");
            }
            FileOutputStream stream = new FileOutputStream(out);
            try {
                stream.write(tutorial);
                stream.getFD().sync();
                stream.close();
                if (listener != null) {
                    listener.onProgress(1, 1, expected.relativePath);
                }
                return new Result(1, 1, tutorial.length, mismatches, stagingRoot);
            } finally {
            }
        } else {
            mismatches.add(expected.relativePath);
            deleteRecursively(stagingRoot);
            return new Result(1, 0, 0L, mismatches, stagingRoot);
        }
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Incorrect condition in loop: B:17:0x0054 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.ahsim.demulation.GenesisRomOriginalContentAssetProvider.Result extractResultEndingContent(java.io.InputStream r19, long r20, java.io.File r22, com.ahsim.demulation.GenesisRomOriginalContentAssetProvider.ProgressListener r23) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 265
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ahsim.demulation.GenesisRomOriginalContentAssetProvider.extractResultEndingContent(java.io.InputStream, long, java.io.File, com.ahsim.demulation.GenesisRomOriginalContentAssetProvider$ProgressListener):com.ahsim.demulation.GenesisRomOriginalContentAssetProvider$Result");
    }

    public static void completeV9ToV10ContentStaging(File previousV9Root, File stagingRoot) throws IOException {
        if (previousV9Root == null || !previousV9Root.isDirectory()) {
            throw new IOException("Previous READY v9 root is unavailable");
        }
        if (stagingRoot == null || !stagingRoot.isDirectory()) {
            throw new IOException("Result/ending-content staging is unavailable");
        }
        ArrayList<RomOriginalContentAssetManifest.Entry> old = new ArrayList<>();
        old.addAll(RomOriginalContentAssetManifest.stagePEntries());
        old.addAll(RomOriginalContentAssetManifest.stageQEntries());
        Iterator<RomOriginalContentAssetManifest.Entry> it = old.iterator();
        while (it.hasNext()) {
            RomOriginalContentAssetManifest.Entry e = it.next();
            File src = safeChild(previousV9Root, e.relativePath);
            if (!src.isFile() || src.length() != e.length || !e.sha256.equalsIgnoreCase(sha256(readExactly(src, e.length)))) {
                throw new IOException("Previous READY v9 content mismatch: " + e.relativePath);
            }
            File dst = safeChild(stagingRoot, e.relativePath);
            File parent = dst.getParentFile();
            if (parent != null && !parent.mkdirs() && !parent.isDirectory()) {
                throw new IOException("Could not create migrated content directory");
            }
            copySynced(src, dst);
        }
    }

    public static void completeV8ToV9ContentStaging(File previousV8Root, File stagingRoot) throws IOException {
        if (previousV8Root == null || !previousV8Root.isDirectory()) {
            throw new IOException("Previous READY v8 root is unavailable");
        }
        if (stagingRoot == null || !stagingRoot.isDirectory()) {
            throw new IOException("Tutorial-content staging is unavailable");
        }
        for (RomOriginalContentAssetManifest.Entry e : RomOriginalContentAssetManifest.stagePEntries()) {
            File src = safeChild(previousV8Root, e.relativePath);
            if (!src.isFile() || src.length() != e.length || !e.sha256.equalsIgnoreCase(sha256(readExactly(src, e.length)))) {
                throw new IOException("Previous READY v8 content mismatch: " + e.relativePath);
            }
            File dst = safeChild(stagingRoot, e.relativePath);
            File parent = dst.getParentFile();
            if (parent != null && !parent.mkdirs() && !parent.isDirectory()) {
                throw new IOException("Could not create migrated content directory");
            }
            copySynced(src, dst);
        }
    }

    static List<byte[]> buildExactAssets(byte[] rom) throws IOException {
        List<LogicalAsset> logical = buildAssets(rom);
        ArrayList<byte[]> out = new ArrayList<>();
        for (RomOriginalContentAssetManifest.Entry e : RomOriginalContentAssetManifest.entries()) {
            LogicalAsset a = find(logical, e.relativePath);
            if (a == null) {
                throw new IOException("Missing original-content asset " + e.relativePath);
            }
            out.add(a.data);
        }
        return Collections.unmodifiableList(out);
    }

    private static List<LogicalAsset> buildAssets(byte[] rom) throws IOException {
        return buildAssets(rom, null);
    }

    private static List<LogicalAsset> buildAssets(byte[] rom, String profileId) throws IOException {
        int i;
        ByteArrayOutputStream frontend;
        ArrayList<LogicalAsset> out = new ArrayList<>();
        ByteArrayOutputStream frontend2 = new ByteArrayOutputStream(601);
        boolean exactGerman = GermanRomAddressMap.isExactGerman(rom);
        int titleText = GermanRomAddressMap.fixed(rom, TITLE_TEXT);
        if (!exactGerman) {
            frontend2.write(copy(rom, titleText, 36));
        } else {
            int cursor = titleText;
            for (int i2 = 0; i2 < 4; i2++) {
                byte[] value = readCStringBytes(rom, cursor, 128);
                frontend2.write(value);
                cursor += value.length;
            }
        }
        int houseJoinPointers = GermanRomAddressMap.fixed(rom, HOUSE_JOIN_POINTERS);
        int romHouse = 0;
        while (true) {
            if (romHouse >= 3) {
                break;
            }
            frontend2.write(readCStringBytes(rom, u24(be32(rom, (romHouse * 4) + houseJoinPointers)), RazorTerrainAtlas.HEIGHT));
            romHouse++;
        }
        out.add(new LogicalAsset(RomOriginalContentAssetManifest.FRONTEND_EXACT_TEXT, frontend2.toByteArray()));
        boolean russian = "translation_ru_shedevr_lipetsk_usa".equals(profileId);
        boolean german = "dune_arrakis_germany_gm_t70246_00".equals(profileId);
        if (russian) {
            out.add(new LogicalAsset("content/mission/presentation_text_v1.bin", GenesisRomRussianLocalizationAssetProvider.decodeMissionPresentationText(rom)));
            out.add(new LogicalAsset("content/tutorial/exact_text_v1.bin", GenesisRomRussianLocalizationAssetProvider.decodeTutorialExactText(rom)));
            out.add(new LogicalAsset("content/result/mission_result_data_v1.bin", GenesisRomRussianLocalizationAssetProvider.decodeMissionResultExactData(rom)));
            out.add(new LogicalAsset("content/ending/ending_text_v1.bin", GenesisRomRussianLocalizationAssetProvider.decodeEndingText(rom)));
        } else {
            ByteArrayOutputStream mission = new ByteArrayOutputStream(15911);
            int houseMissionTable = GermanRomAddressMap.fixed(rom, HOUSE_MISSION_TABLE);
            int m = 0;
            for (i = 3; m < i; i = 3) {
                int base = u24(be32(rom, houseMissionTable + (m * 4)));
                int romHouse2 = m;
                int field = 0;
                while (true) {
                    frontend = frontend2;
                    if (field < 9) {
                        int record = (field * 16) + base;
                        int m2 = field;
                        int m3 = 0;
                        while (true) {
                            int record2 = record;
                            if (m3 < 4) {
                                int pointer = u24(be32(rom, record2 + (m3 * 4)));
                                int field2 = m3;
                                mission.write(readCStringBytes(rom, pointer, DuneHackR82ScenarioRecordDecoder.MAX_RECORDS));
                                m3 = field2 + 1;
                                record = record2;
                            }
                        }
                        field = m2 + 1;
                        frontend2 = frontend;
                    }
                }
                m = romHouse2 + 1;
                frontend2 = frontend;
            }
            out.add(new LogicalAsset("content/mission/presentation_text_v1.bin", mission.toByteArray()));
            out.add(new LogicalAsset("content/tutorial/exact_text_v1.bin", buildTutorialExactAsset(rom, !german)));
            out.add(new LogicalAsset("content/result/mission_result_data_v1.bin", buildMissionResultExactAsset(rom)));
            out.add(new LogicalAsset("content/ending/ending_text_v1.bin", buildEndingTextAsset(rom, !german)));
        }
        return out;
    }

    private static byte[] buildMissionResultExactAsset(byte[] rom) throws IOException {
        ByteArrayOutputStream result = new ByteArrayOutputStream(493);
        result.write(copy(rom, GermanRomAddressMap.fixed(rom, RESULT_THRESHOLDS), 16));
        result.write(copy(rom, GermanRomAddressMap.fixed(rom, RESULT_RANK_NAMES), 153));
        result.write(copy(rom, GermanRomAddressMap.fixed(rom, RESULT_HOUSE_LABELS), 27));
        int passwordRecords = GermanRomAddressMap.fixed(rom, RESULT_PASSWORD_RECORDS);
        for (int mission = 1; mission <= 9; mission++) {
            for (int romHouse = 0; romHouse < 3; romHouse++) {
                int record = ((mission - 1) * 24) + passwordRecords + (romHouse * 8);
                int pointer = u24(be32(rom, record));
                byte[] password = readCStringBytes(rom, pointer, 32);
                if (password.length != 11) {
                    throw new IOException("Mission-result password length mismatch");
                }
                result.write(password);
            }
        }
        int mission2 = result.size();
        if (mission2 != 493) {
            throw new IOException("Mission-result exact-content size mismatch");
        }
        return result.toByteArray();
    }

    private static byte[] buildEndingTextAsset(byte[] rom) throws IOException {
        return buildEndingTextAsset(rom, true);
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0038, code lost:
    
        throw new java.io.IOException("Ending palette marker mismatch");
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0052, code lost:
    
        if (r4 == false) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0054, code lost:
    
        r5 = copy(r8, r0, r1 - r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x005a, code lost:
    
        if (r9 == false) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x005f, code lost:
    
        if (r5.length != 1354) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0069, code lost:
    
        throw new java.io.IOException("Ending exact-content size mismatch");
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x006a, code lost:
    
        if (r9 != false) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x006f, code lost:
    
        if (r5.length < 128) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0074, code lost:
    
        if (r5.length > 8192) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x007e, code lost:
    
        throw new java.io.IOException("German ending content size mismatch");
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x007f, code lost:
    
        return r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0087, code lost:
    
        throw new java.io.IOException("Ending text stream is unterminated");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static byte[] buildEndingTextAsset(byte[] r8, boolean r9) throws java.io.IOException {
        /*
            r0 = 71984(0x11930, float:1.00871E-40)
            int r0 = com.ahsim.demulation.GermanRomAddressMap.fixed(r8, r0)
            r1 = r0
            int r2 = r8.length
            int r3 = r0 + 4096
            int r2 = java.lang.Math.min(r2, r3)
            boolean r3 = com.ahsim.demulation.GermanRomAddressMap.isExactGerman(r8)
            r4 = 0
        L14:
            if (r1 >= r2) goto L52
            int r5 = r1 + 1
            r1 = r8[r1]
            r6 = 255(0xff, float:3.57E-43)
            r1 = r1 & r6
            if (r1 != 0) goto L22
            r4 = 1
            r1 = r5
            goto L52
        L22:
            if (r1 != r6) goto L39
            if (r5 >= r2) goto L31
            int r7 = r5 + 1
            r5 = r8[r5]
            r5 = r5 & r6
            r6 = 3
            if (r5 > r6) goto L30
            r1 = r7
            goto L51
        L30:
            r5 = r7
        L31:
            java.io.IOException r6 = new java.io.IOException
            java.lang.String r7 = "Ending palette marker mismatch"
            r6.<init>(r7)
            throw r6
        L39:
            r6 = 10
            if (r1 == r6) goto L50
            r6 = 32
            if (r1 < r6) goto L48
            if (r3 != 0) goto L50
            r6 = 126(0x7e, float:1.77E-43)
            if (r1 > r6) goto L48
            goto L50
        L48:
            java.io.IOException r6 = new java.io.IOException
            java.lang.String r7 = "Ending text stream contains unsupported byte"
            r6.<init>(r7)
            throw r6
        L50:
            r1 = r5
        L51:
            goto L14
        L52:
            if (r4 == 0) goto L80
            int r5 = r1 - r0
            byte[] r5 = copy(r8, r0, r5)
            if (r9 == 0) goto L6a
            int r6 = r5.length
            r7 = 1354(0x54a, float:1.897E-42)
            if (r6 != r7) goto L62
            goto L6a
        L62:
            java.io.IOException r6 = new java.io.IOException
            java.lang.String r7 = "Ending exact-content size mismatch"
            r6.<init>(r7)
            throw r6
        L6a:
            if (r9 != 0) goto L7f
            int r6 = r5.length
            r7 = 128(0x80, float:1.8E-43)
            if (r6 < r7) goto L77
            int r6 = r5.length
            r7 = 8192(0x2000, float:1.148E-41)
            if (r6 > r7) goto L77
            goto L7f
        L77:
            java.io.IOException r6 = new java.io.IOException
            java.lang.String r7 = "German ending content size mismatch"
            r6.<init>(r7)
            throw r6
        L7f:
            return r5
        L80:
            java.io.IOException r5 = new java.io.IOException
            java.lang.String r6 = "Ending text stream is unterminated"
            r5.<init>(r6)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ahsim.demulation.GenesisRomOriginalContentAssetProvider.buildEndingTextAsset(byte[], boolean):byte[]");
    }

    private static byte[] buildTutorialExactAsset(byte[] rom) throws IOException {
        return buildTutorialExactAsset(rom, true);
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0023, code lost:
    
        r5 = r5 + 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static byte[] buildTutorialExactAsset(byte[] r12, boolean r13) throws java.io.IOException {
        /*
            java.io.ByteArrayOutputStream r0 = new java.io.ByteArrayOutputStream
            r1 = 1429(0x595, float:2.002E-42)
            r0.<init>(r1)
            r2 = 0
            int[] r3 = com.ahsim.demulation.GenesisRomOriginalContentAssetProvider.TUTORIAL_SCRIPT_STARTS
            int r4 = r3.length
            r5 = 0
        Lc:
            if (r5 >= r4) goto L67
            r6 = r3[r5]
            int r7 = com.ahsim.demulation.GermanRomAddressMap.fixed(r12, r6)
            r8 = 0
        L15:
            int r8 = r8 + 1
            r9 = 2048(0x800, float:2.87E-42)
            if (r8 > r9) goto L5f
            int r9 = be16(r12, r7)
            int r7 = r7 + 2
            if (r9 != 0) goto L26
            int r5 = r5 + 1
            goto Lc
        L26:
            r10 = 48
            if (r9 != r10) goto L3e
            r10 = 256(0x100, float:3.59E-43)
            byte[] r10 = readTutorialCStringBytes(r12, r7, r10)
            r0.write(r10)
            int r2 = r2 + 1
            int r11 = r10.length
            int r7 = r7 + r11
            r11 = r7 & 1
            if (r11 == 0) goto L15
            int r7 = r7 + 1
            goto L15
        L3e:
            int r10 = tutorialArgumentBytes(r9)
            if (r10 < 0) goto L49
            checkRange(r12, r7, r10)
            int r7 = r7 + r10
            goto L15
        L49:
            java.io.IOException r1 = new java.io.IOException
            java.util.Locale r3 = java.util.Locale.US
            java.lang.Integer r4 = java.lang.Integer.valueOf(r9)
            java.lang.Object[] r4 = new java.lang.Object[]{r4}
            java.lang.String r5 = "Unsupported tutorial content opcode %04X"
            java.lang.String r3 = java.lang.String.format(r3, r5, r4)
            r1.<init>(r3)
            throw r1
        L5f:
            java.io.IOException r1 = new java.io.IOException
            java.lang.String r3 = "Tutorial content scan guard"
            r1.<init>(r3)
            throw r1
        L67:
            r3 = 25
            if (r2 != r3) goto Lb4
            boolean r3 = com.ahsim.demulation.GermanRomAddressMap.isExactGerman(r12)
            r4 = 128(0x80, float:1.8E-43)
            if (r3 == 0) goto L76
            r3 = 150(0x96, float:2.1E-43)
            goto L77
        L76:
            r3 = r4
        L77:
            r5 = 273104(0x42ad0, float:3.827E-40)
            int r5 = com.ahsim.demulation.GermanRomAddressMap.fixed(r12, r5)
            byte[] r5 = copy(r12, r5, r3)
            r0.write(r5)
            if (r13 == 0) goto L96
            int r5 = r0.size()
            if (r5 != r1) goto L8e
            goto L96
        L8e:
            java.io.IOException r1 = new java.io.IOException
            java.lang.String r4 = "Tutorial exact-content size mismatch"
            r1.<init>(r4)
            throw r1
        L96:
            if (r13 != 0) goto Laf
            int r1 = r0.size()
            if (r1 < r4) goto La7
            int r1 = r0.size()
            r4 = 16384(0x4000, float:2.2959E-41)
            if (r1 > r4) goto La7
            goto Laf
        La7:
            java.io.IOException r1 = new java.io.IOException
            java.lang.String r4 = "German tutorial exact-content size mismatch"
            r1.<init>(r4)
            throw r1
        Laf:
            byte[] r1 = r0.toByteArray()
            return r1
        Lb4:
            java.io.IOException r1 = new java.io.IOException
            java.lang.String r3 = "Tutorial exact-message count mismatch"
            r1.<init>(r3)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ahsim.demulation.GenesisRomOriginalContentAssetProvider.buildTutorialExactAsset(byte[], boolean):byte[]");
    }

    private static LogicalAsset find(List<LogicalAsset> assets, String path) {
        for (LogicalAsset a : assets) {
            if (a.path.equals(path)) {
                return a;
            }
        }
        return null;
    }

    private static byte[] readCStringBytes(byte[] rom, int offset, int guard) throws IOException {
        if (offset < 0 || offset >= rom.length) {
            throw new IOException("Original-content string pointer outside ROM");
        }
        int end = offset;
        int limit = Math.min(rom.length, offset + guard);
        boolean german = GermanRomAddressMap.isExactGerman(rom);
        while (end < limit && rom[end] != 0) {
            int c = rom[end] & 255;
            if (c < 32 || (!german && c > 126)) {
                throw new IOException("Original-content text contains unsupported byte");
            }
            end++;
        }
        if (end >= limit || end >= rom.length) {
            throw new IOException("Original-content string is unterminated");
        }
        return copy(rom, offset, (end - offset) + 1);
    }

    private static byte[] readTutorialCStringBytes(byte[] rom, int offset, int guard) throws IOException {
        if (offset < 0 || offset >= rom.length) {
            throw new IOException("Tutorial content string outside ROM");
        }
        int end = offset;
        int limit = Math.min(rom.length, offset + guard);
        boolean german = GermanRomAddressMap.isExactGerman(rom);
        while (end < limit && rom[end] != 0) {
            int c = rom[end] & 255;
            if (c != 10 && (c < 32 || (!german && c > 126))) {
                throw new IOException("Tutorial content text contains unsupported byte");
            }
            end++;
        }
        if (end >= limit || end >= rom.length) {
            throw new IOException("Tutorial content string is unterminated");
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
        byte[] out = new byte[length];
        System.arraycopy(data, offset, out, 0, length);
        return out;
    }

    private static void checkRange(byte[] data, int offset, int length) throws IOException {
        if (data == null || offset < 0 || length < 0 || offset > data.length - length) {
            throw new IOException("Original-content ROM range is invalid");
        }
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

    private static byte[] readExactly(File file, int expectedLength) throws IOException {
        InputStream input = new FileInputStream(file);
        try {
            ByteArrayOutputStream output = new ByteArrayOutputStream(expectedLength);
            try {
                byte[] buffer = new byte[8192];
                int total = 0;
                while (true) {
                    int n = input.read(buffer);
                    if (n >= 0) {
                        if (n != 0) {
                            total += n;
                            if (total > expectedLength) {
                                throw new IOException("Content file grew while reading");
                            }
                            output.write(buffer, 0, n);
                        }
                    } else {
                        if (total != expectedLength) {
                            throw new IOException("Content file changed while reading");
                        }
                        byte[] byteArray = output.toByteArray();
                        output.close();
                        input.close();
                        return byteArray;
                    }
                }
            } finally {
            }
        } catch (Throwable th) {
            try {
                input.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    private static void copySynced(File source, File destination) throws IOException {
        byte[] buffer = new byte[8192];
        InputStream in = new FileInputStream(source);
        try {
            FileOutputStream out = new FileOutputStream(destination);
            while (true) {
                try {
                    int n = in.read(buffer);
                    if (n < 0) {
                        out.getFD().sync();
                        out.close();
                        in.close();
                        return;
                    } else if (n > 0) {
                        out.write(buffer, 0, n);
                    }
                } finally {
                }
            }
        } catch (Throwable th) {
            try {
                in.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    private static File safeChild(File root, String relative) throws IOException {
        File child = new File(root, relative).getCanonicalFile();
        String rp = root.getCanonicalPath();
        String cp = child.getCanonicalPath();
        if (!cp.startsWith(rp + File.separator)) {
            throw new IOException("Unsafe original-content asset path");
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
