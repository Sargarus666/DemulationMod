package com.ahsim.demulation;

import com.ahsim.demulation.RomOfficialRegionAssetVariants;
import com.ahsim.demulation.RomOriginalContentAssetManifest;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Array;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Locale;

/* loaded from: classes2.dex */
public final class RomRuntimeOriginalContentAssets {
    private static final Charset ASCII = Charset.forName("US-ASCII");
    private static final Charset ROM_BYTES = Charset.forName("ISO-8859-1");
    private static final Charset UTF8 = Charset.forName("UTF-8");
    private final File installRoot;
    private final RomRuntimeRussianLocalizationAssets localization;
    private final String sourceProfile;

    public RomRuntimeOriginalContentAssets(File installRoot) throws IOException {
        this(installRoot, null, null);
    }

    public RomRuntimeOriginalContentAssets(File installRoot, RomRuntimeRussianLocalizationAssets localization) throws IOException {
        this(installRoot, localization, null);
    }

    public RomRuntimeOriginalContentAssets(File installRoot, RomRuntimeRussianLocalizationAssets localization, String sourceProfile) throws IOException {
        if (installRoot == null || !installRoot.isDirectory()) {
            throw new IOException("Original-content READY root is unavailable");
        }
        this.installRoot = installRoot.getCanonicalFile();
        this.localization = localization;
        this.sourceProfile = sourceProfile == null ? "" : sourceProfile;
    }

    public File installRoot() {
        return this.installRoot;
    }

    public byte[] read(String relativePath) throws IOException {
        RomOriginalContentAssetManifest.Entry entry = RomOriginalContentAssetManifest.find(relativePath);
        if (entry == null) {
            throw new IOException("Original-content asset is not declared: " + relativePath);
        }
        RomOfficialRegionAssetVariants.Expected expected = RomOfficialRegionAssetVariants.expectedForInstall(this.installRoot, this.sourceProfile, entry.relativePath, entry.length, entry.sha256);
        File file = safeChild(this.installRoot, entry.relativePath);
        if (!file.isFile() || file.length() != expected.length) {
            throw new IOException("Installed original-content asset is missing or has wrong size: " + entry.relativePath);
        }
        byte[] data = readExactly(file, expected.length);
        if (!expected.sha256.equalsIgnoreCase(sha256(data))) {
            throw new IOException("Installed original-content asset fingerprint mismatch: " + entry.relativePath);
        }
        return data;
    }

    public boolean russianLocalizationActive() {
        return this.localization != null;
    }

    public boolean germanBaseActive() {
        return "dune_arrakis_germany_gm_t70246_00".equals(this.sourceProfile);
    }

    public static final class HudObjectNames {
        private final String[] structures;
        private final String[] units;

        private HudObjectNames(String[] units, String[] structures) {
            this.units = units;
            this.structures = structures;
        }

        public int unitCount() {
            return this.units.length;
        }

        public int structureCount() {
            return this.structures.length;
        }

        public String unit(int type) {
            if (type < 0 || type >= this.units.length) {
                return null;
            }
            return this.units[type];
        }

        public String structure(int type) {
            if (type < 0 || type >= this.structures.length) {
                return null;
            }
            return this.structures[type];
        }
    }

    public HudObjectNames russianHudObjectNames() throws IOException {
        if (this.localization == null || !this.localization.provides(RomRussianLocalizationAssetManifest.HUD_OBJECT_NAMES)) {
            return null;
        }
        byte[] data = this.localization.read(RomRussianLocalizationAssetManifest.HUD_OBJECT_NAMES);
        String[] units = new String[27];
        String[] structures = new String[19];
        int p = 0;
        for (int i = 0; i < units.length; i++) {
            int end = findZero(data, p);
            units[i] = decodeUtf8Name(data, p, end, "Unit", i);
            p = end + 1;
        }
        for (int i2 = 0; i2 < structures.length; i2++) {
            int end2 = findZero(data, p);
            structures[i2] = decodeUtf8Name(data, p, end2, "Structure", i2);
            p = end2 + 1;
        }
        int i3 = data.length;
        if (p != i3) {
            throw new IOException("Russian HUD object-name payload has trailing data");
        }
        return new HudObjectNames(units, structures);
    }

    private static int findZero(byte[] data, int start) throws IOException {
        if (start < 0 || start >= data.length) {
            throw new IOException("Russian HUD object-name payload is truncated");
        }
        int p = start;
        while (p < data.length && data[p] != 0) {
            p++;
        }
        if (p >= data.length) {
            throw new IOException("Russian HUD object name is unterminated");
        }
        return p;
    }

    private static String decodeUtf8Name(byte[] data, int start, int end, String kind, int index) throws IOException {
        if (end <= start) {
            throw new IOException(kind + " HUD object name is empty: " + index);
        }
        String value = new String(data, start, end - start, UTF8).trim();
        if (value.length() == 0) {
            throw new IOException(kind + " HUD object name is blank: " + index);
        }
        return value;
    }

    private byte[] readLocalizedContent(String relativePath) throws IOException {
        return (this.localization == null || !this.localization.provides(relativePath)) ? read(relativePath) : this.localization.read(relativePath);
    }

    public String[] titleStrings() throws IOException {
        byte[] exact;
        if (this.localization != null && this.localization.provides(RomRussianLocalizationAssetManifest.TITLE_STRINGS)) {
            exact = this.localization.read(RomRussianLocalizationAssetManifest.TITLE_STRINGS);
        } else {
            byte[] exact2 = read(RomOriginalContentAssetManifest.FRONTEND_EXACT_TEXT);
            exact = germanBaseActive() ? exact2 : copy(exact2, 0, 36);
        }
        Cursor c = new Cursor(exact, 0);
        String[] out = new String[4];
        for (int i = 0; i < out.length; i++) {
            out[i] = c.nextCString();
        }
        if (!germanBaseActive() && c.position != 36) {
            throw new IOException("Frontend title-string block size mismatch");
        }
        return out;
    }

    public byte[] houseJoinTextBytes(int romHouse) throws IOException {
        if (romHouse < 0 || romHouse > 2) {
            throw new IOException("Invalid ROM House index");
        }
        if (this.localization != null) {
            String[] paths = {"frontend/mentat/radnor_harkonnen_join_text.bin", "frontend/mentat/cyril_atreides_join_text.bin", "frontend/mentat/ammon_ordos_join_text.bin"};
            if (this.localization.provides(paths[romHouse])) {
                return this.localization.read(paths[romHouse]);
            }
        }
        byte[] data = read(RomOriginalContentAssetManifest.FRONTEND_EXACT_TEXT);
        Cursor c = new Cursor(data, 0);
        for (int i = 0; i < 4; i++) {
            c.nextCString();
        }
        for (int i2 = 0; i2 < 3; i2++) {
            int start = c.position;
            c.nextCString();
            if (i2 == romHouse) {
                int length = c.position - start;
                return copy(data, start, length);
            }
        }
        throw new IOException("House join text is missing");
    }

    public byte[] missionPresentationText() throws IOException {
        if (this.localization != null && this.localization.provides("content/mission/presentation_text_v1.bin")) {
            return this.localization.read("content/mission/presentation_text_v1.bin");
        }
        return read("content/mission/presentation_text_v1.bin");
    }

    public static final class TutorialExactContent {
        private final byte[] characterMap;
        private final byte[][] messages;

        private TutorialExactContent(byte[][] messages, byte[] characterMap) {
            this.messages = messages;
            this.characterMap = characterMap;
        }

        public int messageCount() {
            return this.messages.length;
        }

        public byte[] message(int index) {
            if (index < 0 || index >= this.messages.length) {
                throw new IllegalArgumentException("Tutorial message index");
            }
            return RomRuntimeOriginalContentAssets.copyUnchecked(this.messages[index]);
        }

        public int characterMapValue(int ascii) {
            if (ascii < 0 || ascii >= this.characterMap.length) {
                throw new IllegalArgumentException("Tutorial character map index");
            }
            return this.characterMap[ascii] & 255;
        }

        public int characterMapSize() {
            return this.characterMap.length;
        }

        public byte[] characterMapCopy() {
            return RomRuntimeOriginalContentAssets.copyUnchecked(this.characterMap);
        }
    }

    public TutorialExactContent tutorialExactContent() throws IOException {
        byte[] data = readLocalizedContent("content/tutorial/exact_text_v1.bin");
        byte[][] messages = new byte[25][];
        int p = 0;
        for (int i = 0; i < messages.length; i++) {
            int start = p;
            while (p < data.length && data[p] != 0) {
                int ch = data[p] & 255;
                if (ch != 10 && (ch < 32 || (!germanBaseActive() && ch > 126))) {
                    throw new IOException("Tutorial READY text contains unsupported byte");
                }
                p++;
            }
            if (p >= data.length) {
                throw new IOException("Tutorial READY message is unterminated");
            }
            messages[i] = copy(data, start, p - start);
            p++;
        }
        int characterMapBytes = germanBaseActive() ? 150 : 128;
        if (data.length - p != characterMapBytes) {
            throw new IOException("Tutorial READY character-map size mismatch");
        }
        return new TutorialExactContent(messages, copy(data, p, characterMapBytes));
    }

    public static final class MissionResultExactContent {
        private final byte[][] houseLabels;
        private final byte[][][] passwords;
        private final byte[][] rankRecords;
        private final int[] thresholds;

        private MissionResultExactContent(int[] thresholds, byte[][] rankRecords, byte[][] houseLabels, byte[][][] passwords) {
            this.thresholds = thresholds;
            this.rankRecords = rankRecords;
            this.houseLabels = houseLabels;
            this.passwords = passwords;
        }

        public int threshold(int index) {
            if (index < 0 || index >= this.thresholds.length) {
                throw new IllegalArgumentException("Result threshold index");
            }
            return this.thresholds[index];
        }

        public int rankIndexFor(int displayScore, boolean finalMissionVictory) {
            if (finalMissionVictory) {
                return 8;
            }
            int score = Math.max(0, displayScore);
            int rank = 0;
            while (rank < 7 && score >= this.thresholds[rank]) {
                rank++;
            }
            return rank;
        }

        public byte[] rankRecord(int rankIndex) {
            if (rankIndex < 0 || rankIndex >= this.rankRecords.length) {
                throw new IllegalArgumentException("Result rank index");
            }
            return RomRuntimeOriginalContentAssets.copyUnchecked(this.rankRecords[rankIndex]);
        }

        public byte[] houseLabel(int romHouse) {
            if (romHouse < 0 || romHouse >= this.houseLabels.length) {
                throw new IllegalArgumentException("Result House index");
            }
            return RomRuntimeOriginalContentAssets.copyUnchecked(this.houseLabels[romHouse]);
        }

        public byte[] password(int missionOneBased, int romHouse) {
            int mission = missionOneBased - 1;
            if (mission < 0 || mission >= this.passwords.length || romHouse < 0 || romHouse >= 3) {
                throw new IllegalArgumentException("Result password index");
            }
            return RomRuntimeOriginalContentAssets.copyUnchecked(this.passwords[mission][romHouse]);
        }

        public String rankName(int rankIndex) {
            byte[] record = rankRecord(Math.max(0, Math.min(8, rankIndex)));
            int n = 0;
            while (n < record.length && record[n] != 0) {
                n++;
            }
            return new String(record, 0, n, RomRuntimeOriginalContentAssets.ROM_BYTES).trim();
        }
    }

    public MissionResultExactContent missionResultExactContent() throws IOException {
        byte[] data = readLocalizedContent("content/result/mission_result_data_v1.bin");
        if (data.length != 493) {
            throw new IOException("Mission-result READY size mismatch");
        }
        int p = 0;
        int[] thresholds = new int[8];
        int i = 0;
        while (i < thresholds.length) {
            thresholds[i] = ((data[p] & 255) << 8) | (data[p + 1] & 255);
            i++;
            p += 2;
        }
        if (thresholds[7] != 65535) {
            throw new IOException("Mission-result threshold sentinel mismatch");
        }
        for (int i2 = 1; i2 < 7; i2++) {
            if (thresholds[i2] <= thresholds[i2 - 1]) {
                throw new IOException("Mission-result thresholds are not increasing");
            }
        }
        byte[][] ranks = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, 9, 17);
        for (int i3 = 0; i3 < ranks.length; i3++) {
            System.arraycopy(data, p, ranks[i3], 0, 17);
            p += 17;
            validateFixedText(ranks[i3], "Mission-result rank record", germanBaseActive());
        }
        byte[][] houses = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, 3, 9);
        for (int i4 = 0; i4 < houses.length; i4++) {
            System.arraycopy(data, p, houses[i4], 0, 9);
            p += 9;
            validateFixedText(houses[i4], "Mission-result House label", germanBaseActive());
        }
        byte[][][] passwords = (byte[][][]) Array.newInstance((Class<?>) Byte.TYPE, 9, 3, 10);
        for (int mission = 0; mission < 9; mission++) {
            for (int house = 0; house < 3; house++) {
                int start = p;
                while (p < data.length && data[p] != 0) {
                    int ch = data[p] & 255;
                    if (ch < 32 || ch > 126) {
                        throw new IOException("Mission-result password is not ASCII");
                    }
                    p++;
                }
                if (p >= data.length) {
                    throw new IOException("Mission-result password is unterminated");
                }
                if (p - start != 10) {
                    throw new IOException("Mission-result password length mismatch");
                }
                System.arraycopy(data, start, passwords[mission][house], 0, 10);
                p++;
            }
        }
        int mission2 = data.length;
        if (p == mission2) {
            return new MissionResultExactContent(thresholds, ranks, houses, passwords);
        }
        throw new IOException("Mission-result READY trailing bytes");
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x0037, code lost:
    
        throw new java.io.IOException("Ending READY palette marker mismatch");
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0055, code lost:
    
        if (r2 == false) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0058, code lost:
    
        if (r1 != r0.length) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x005a, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0062, code lost:
    
        throw new java.io.IOException("Ending READY stream terminator mismatch");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public byte[] endingTextData() throws java.io.IOException {
        /*
            r6 = this;
            java.lang.String r0 = "content/ending/ending_text_v1.bin"
            byte[] r0 = r6.readLocalizedContent(r0)
            int r1 = r0.length
            r2 = 2
            if (r1 < r2) goto L63
            int r1 = r0.length
            r2 = 4096(0x1000, float:5.74E-42)
            if (r1 > r2) goto L63
            r1 = 0
            r2 = 0
        L11:
            int r3 = r0.length
            if (r1 >= r3) goto L55
            int r3 = r1 + 1
            r1 = r0[r1]
            r4 = 255(0xff, float:3.57E-43)
            r1 = r1 & r4
            if (r1 != 0) goto L20
            r2 = 1
            r1 = r3
            goto L55
        L20:
            if (r1 != r4) goto L38
            int r5 = r0.length
            if (r3 >= r5) goto L30
            int r5 = r3 + 1
            r3 = r0[r3]
            r3 = r3 & r4
            r4 = 3
            if (r3 > r4) goto L2f
            r1 = r5
            goto L54
        L2f:
            r3 = r5
        L30:
            java.io.IOException r4 = new java.io.IOException
            java.lang.String r5 = "Ending READY palette marker mismatch"
            r4.<init>(r5)
            throw r4
        L38:
            r4 = 10
            if (r1 == r4) goto L53
            r4 = 32
            if (r1 < r4) goto L4b
            boolean r4 = r6.germanBaseActive()
            if (r4 != 0) goto L53
            r4 = 126(0x7e, float:1.77E-43)
            if (r1 > r4) goto L4b
            goto L53
        L4b:
            java.io.IOException r4 = new java.io.IOException
            java.lang.String r5 = "Ending READY stream contains unsupported byte"
            r4.<init>(r5)
            throw r4
        L53:
            r1 = r3
        L54:
            goto L11
        L55:
            if (r2 == 0) goto L5b
            int r3 = r0.length
            if (r1 != r3) goto L5b
            return r0
        L5b:
            java.io.IOException r3 = new java.io.IOException
            java.lang.String r4 = "Ending READY stream terminator mismatch"
            r3.<init>(r4)
            throw r3
        L63:
            java.io.IOException r1 = new java.io.IOException
            java.lang.String r2 = "Ending content stream size mismatch"
            r1.<init>(r2)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ahsim.demulation.RomRuntimeOriginalContentAssets.endingTextData():byte[]");
    }

    static String decodeCString(byte[] data, int start, int[] next) throws IOException {
        if (data == null || start < 0 || start >= data.length) {
            throw new IOException("Content text cursor outside asset");
        }
        int end = start;
        while (end < data.length && data[end] != 0) {
            int ch = data[end] & 255;
            if (ch < 32) {
                throw new IOException("Content text contains unsupported control byte");
            }
            end++;
        }
        int ch2 = data.length;
        if (end >= ch2) {
            throw new IOException("Content text is unterminated");
        }
        if (next != null && next.length > 0) {
            next[0] = end + 1;
        }
        return new String(data, start, end - start, ROM_BYTES);
    }

    private static void validateFixedText(byte[] record, String name, boolean allowHighBit) throws IOException {
        for (int value : record) {
            int ch = value & 255;
            if (ch != 0 && (ch < 32 || (!allowHighBit && ch > 126))) {
                throw new IOException(name + " contains unsupported byte/padding");
            }
        }
    }

    private static final class Cursor {
        final byte[] data;
        int position;

        Cursor(byte[] data, int position) {
            this.data = data;
            this.position = position;
        }

        String nextCString() throws IOException {
            int[] next = {this.position};
            String s = RomRuntimeOriginalContentAssets.decodeCString(this.data, this.position, next);
            this.position = next[0];
            return s;
        }
    }

    private File safeChild(File root, String relativePath) throws IOException {
        File child = new File(root, relativePath).getCanonicalFile();
        String rp = root.getCanonicalPath();
        String cp = child.getCanonicalPath();
        if (!cp.startsWith(rp + File.separator)) {
            throw new IOException("Original-content path escapes active generation");
        }
        return child;
    }

    private static byte[] copy(byte[] data, int offset, int length) throws IOException {
        if (data == null || offset < 0 || length < 0 || offset > data.length - length) {
            throw new IOException("Content copy range");
        }
        byte[] out = new byte[length];
        System.arraycopy(data, offset, out, 0, length);
        return out;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte[] copyUnchecked(byte[] data) {
        byte[] out = new byte[data.length];
        System.arraycopy(data, 0, out, 0, data.length);
        return out;
    }

    private static byte[] readExactly(File file, int expectedLength) throws IOException {
        InputStream input = new FileInputStream(file);
        try {
            ByteArrayOutputStream output = new ByteArrayOutputStream(expectedLength);
            try {
                byte[] buffer = new byte[8192];
                int total = 0;
                while (true) {
                    int count = input.read(buffer);
                    if (count >= 0) {
                        if (count != 0) {
                            total += count;
                            if (total > expectedLength) {
                                throw new IOException("Original-content asset grew while reading");
                            }
                            output.write(buffer, 0, count);
                        }
                    } else {
                        if (total != expectedLength) {
                            throw new IOException("Original-content asset changed while reading");
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
