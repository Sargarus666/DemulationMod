package com.ahsim.demulation;

import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

/* loaded from: classes2.dex */
public final class DuneHackGraphicsLayoutAdapter {
    private static final int DUNEHACK_METATILE_BYTES = 11520;
    private static final int DUNEHACK_METATILE_COUNT = 360;
    private static final int DUNEHACK_METATILE_WORDS = 5760;
    private static final int DUNEHACK_RESIDENT_D800_COUNT = 41;
    private static final int DUNEHACK_RESIDENT_D800_FIRST = 1728;
    private static final int DUNEHACK_RESIDENT_F980_COUNT = 36;
    private static final int DUNEHACK_RESIDENT_F980_FIRST = 1996;
    private static final int DUNEHACK_RESIDENT_MAIN_COUNT = 467;
    private static final int DUNEHACK_RESIDENT_MAIN_FIRST = 922;
    private static final int DUNEHACK_RESIDENT_MAIN_LAST = 1388;
    private static final int DUNEHACK_RESIDENT_PRE_COUNT = 136;
    private static final int DUNEHACK_RESIDENT_PRE_FIRST = 1389;
    private static final int MAX_ROM_BYTES = 16777216;
    private static final int METATILE_BYTES = 11584;
    private static final int METATILE_COUNT = 362;
    private static final int METATILE_WORDS = 5792;
    private static final int SPRITE_FIRST_PATTERN = 922;
    private static final int TERRAIN_PATTERN_COUNT = 922;
    private static final int VISUAL_ID_LIMIT = 350;
    private static final int VRAM_PATTERN_COUNT = 2048;

    public interface ProgressListener {
        void onProgress(String str, int i, int i2, String str2);
    }

    public static final class AssetStatus {
        public final boolean adapted;
        public final String detail;
        public final int length;
        public final String relativePath;

        AssetStatus(String relativePath, boolean adapted, int length, String detail) {
            this.relativePath = relativePath;
            this.adapted = adapted;
            this.length = length;
            this.detail = detail == null ? "" : detail;
        }
    }

    public static final class Result {
        public final Map<String, AssetStatus> assets;
        public final List<String> diagnostics;
        public final File stagedRoot;
        public final int tacticalAdapted;
        public final int terrainAdapted;

        Result(File stagedRoot, Map<String, AssetStatus> assets, List<String> diagnostics, int terrainAdapted, int tacticalAdapted) {
            this.stagedRoot = stagedRoot;
            this.assets = Collections.unmodifiableMap(new LinkedHashMap(assets));
            this.diagnostics = Collections.unmodifiableList(new ArrayList(diagnostics));
            this.terrainAdapted = terrainAdapted;
            this.tacticalAdapted = tacticalAdapted;
        }

        public boolean has(String path) {
            AssetStatus status = this.assets.get(path);
            return status != null && status.adapted;
        }

        public int adaptedCount() {
            return this.terrainAdapted + this.tacticalAdapted;
        }

        public String summary() {
            StringBuilder out = new StringBuilder();
            out.append("R79/R80/R81 relocation adapter: terrain ").append(this.terrainAdapted).append("/6, tactical ").append(this.tacticalAdapted).append("/5");
            if (!this.diagnostics.isEmpty()) {
                out.append("; ");
                for (int i = 0; i < this.diagnostics.size(); i++) {
                    if (i != 0) {
                        out.append(" | ");
                    }
                    out.append(this.diagnostics.get(i));
                }
            }
            return out.toString();
        }
    }

    private static final class TerrainTable {
        final List<PatternChunk> chunks;
        final int offset;
        final int paletteOffset;

        TerrainTable(int offset, int paletteOffset, List<PatternChunk> chunks) {
            this.offset = offset;
            this.paletteOffset = paletteOffset;
            this.chunks = chunks;
        }
    }

    private static final class RawTerrainBlock {
        final int descriptorOffset;
        final int externalPatternWords;
        final int maxPatternIndex;
        final int patternOffset;

        RawTerrainBlock(int descriptorOffset, int patternOffset, int externalPatternWords, int maxPatternIndex) {
            this.descriptorOffset = descriptorOffset;
            this.patternOffset = patternOffset;
            this.externalPatternWords = externalPatternWords;
            this.maxPatternIndex = maxPatternIndex;
        }
    }

    private static final class DuneHackTerrainBundle {
        final byte[] descriptors;
        final int maxPatternIndex;
        final int patternCount;
        final byte[] patterns;

        DuneHackTerrainBundle(byte[] patterns, byte[] descriptors, int patternCount, int maxPatternIndex) {
            this.patterns = patterns;
            this.descriptors = descriptors;
            this.patternCount = patternCount;
            this.maxPatternIndex = maxPatternIndex;
        }
    }

    private static final class PatternChunk {
        final int count;
        final int firstPattern;
        final boolean raw;
        final int source;

        PatternChunk(int firstPattern, int count, int source, boolean raw) {
            this.firstPattern = firstPattern;
            this.count = count;
            this.source = source;
            this.raw = raw;
        }
    }

    private static final class SpriteLoader {
        final List<PatternChunk> chunks;
        final int offset;

        SpriteLoader(int offset, List<PatternChunk> chunks) {
            this.offset = offset;
            this.chunks = chunks;
        }
    }

    private static final class DuneHackResidentLoader {
        final int codeOffset;
        final int prePointerCell;
        final int preSource;
        final int streamSource;

        DuneHackResidentLoader(int codeOffset, int prePointerCell, int preSource, int streamSource) {
            this.codeOffset = codeOffset;
            this.prePointerCell = prePointerCell;
            this.preSource = preSource;
            this.streamSource = streamSource;
        }
    }

    private static final class DuneHackStaticBank {
        final byte[] bytes;
        final String detail;
        final boolean[] resident;

        DuneHackStaticBank(byte[] bytes, boolean[] resident, String detail) {
            this.bytes = bytes;
            this.resident = resident;
            this.detail = detail;
        }
    }

    private static final class VisualStats {
        final int dynamic;
        final int valid;

        VisualStats(int valid, int dynamic) {
            this.valid = valid;
            this.dynamic = dynamic;
        }
    }

    private static final class TrackedCompositeTables {
        final int siege;
        final int tank;

        TrackedCompositeTables(int tank, int siege) {
            this.tank = tank;
            this.siege = siege;
        }
    }

    private DuneHackGraphicsLayoutAdapter() {
    }

    public static Result extract(byte[] rom, File stagingRoot, ProgressListener listener) throws IOException {
        return extract(rom, stagingRoot, listener, null, null, false);
    }

    public static Result extract(byte[] rom, File stagingRoot, ProgressListener listener, byte[] baseStaticPatterns) throws IOException {
        return extract(rom, stagingRoot, listener, baseStaticPatterns, null, false);
    }

    public static Result extract(byte[] rom, File stagingRoot, ProgressListener listener, byte[] baseStaticPatterns, byte[] baseDirectLayouts) throws IOException {
        return extract(rom, stagingRoot, listener, baseStaticPatterns, baseDirectLayouts, false);
    }

    public static Result extract(byte[] rom, File stagingRoot, ProgressListener listener, byte[] baseStaticPatterns, boolean allowSparseR79Terrain) throws IOException {
        return extract(rom, stagingRoot, listener, baseStaticPatterns, null, allowSparseR79Terrain);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(40:15|(1:258)(1:21)|22|(1:257)(1:25)|26|(1:28)(1:256)|(2:29|30)|31|(13:228|229|230|231|232|233|234|235|236|237|238|239|240)(27:33|34|35|36|37|38|40|41|42|43|44|45|46|47|48|49|50|51|52|53|54|55|56|57|58|59|60)|61|(29:181|182|183|64|(1:66)|67|68|69|70|71|72|(1:167)(1:76)|77|78|(1:(22:115|(3:159|160|161)(4:117|118|119|120)|(2:151|152)(2:122|123)|124|125|126|127|128|129|130|131|132|133|(1:135)(1:139)|136|137|94|(3:109|(1:111)(1:113)|112)(4:97|98|99|100)|101|(1:103)|104|105)(1:82))(1:165)|(1:114)(1:85)|86|(1:91)|92|93|94|(0)|109|(0)(0)|112|101|(0)|104|105)|63|64|(0)|67|68|69|70|71|72|(0)|167|77|78|(0)(0)|(0)|114|86|(2:89|91)|92|93|94|(0)|109|(0)(0)|112|101|(0)|104|105) */
    /* JADX WARN: Can't wrap try/catch for region: R(41:15|(1:258)(1:21)|22|(1:257)(1:25)|26|(1:28)(1:256)|29|30|31|(13:228|229|230|231|232|233|234|235|236|237|238|239|240)(27:33|34|35|36|37|38|40|41|42|43|44|45|46|47|48|49|50|51|52|53|54|55|56|57|58|59|60)|61|(29:181|182|183|64|(1:66)|67|68|69|70|71|72|(1:167)(1:76)|77|78|(1:(22:115|(3:159|160|161)(4:117|118|119|120)|(2:151|152)(2:122|123)|124|125|126|127|128|129|130|131|132|133|(1:135)(1:139)|136|137|94|(3:109|(1:111)(1:113)|112)(4:97|98|99|100)|101|(1:103)|104|105)(1:82))(1:165)|(1:114)(1:85)|86|(1:91)|92|93|94|(0)|109|(0)(0)|112|101|(0)|104|105)|63|64|(0)|67|68|69|70|71|72|(0)|167|77|78|(0)(0)|(0)|114|86|(2:89|91)|92|93|94|(0)|109|(0)(0)|112|101|(0)|104|105) */
    /* JADX WARN: Code restructure failed: missing block: B:168:0x051d, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:169:0x051e, code lost:
    
        r11 = shortMessage(r0);
        r5.add("visual_table=" + r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:171:0x043f, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:172:0x0440, code lost:
    
        r10 = shortMessage(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:173:0x0445, code lost:
    
        if (r13 == null) goto L273;
     */
    /* JADX WARN: Code restructure failed: missing block: B:174:0x044c, code lost:
    
        r5.add("dunehack_resident_loader=0x" + hex(r13.codeOffset) + " pre_ptr=0x" + hex(r13.prePointerCell) + " pre_src=0x" + hex(r13.preSource) + " stream=0x" + hex(r13.streamSource));
     */
    /* JADX WARN: Code restructure failed: missing block: B:175:0x0498, code lost:
    
        r14 = r13;
        r13 = r10;
        r10 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:177:0x049c, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:178:0x049d, code lost:
    
        r10 = r10 + "; " + shortMessage(r0);
        r5.add("sprite_loader=" + r10);
        r14 = r13;
        r13 = r10;
        r10 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:180:0x0447, code lost:
    
        r13 = findDuneHackResidentLoader(r30);
     */
    /* JADX WARN: Removed duplicated region for block: B:103:0x06e9  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x06d8  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x06db  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x0642  */
    /* JADX WARN: Removed duplicated region for block: B:181:0x036d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x03fb  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0507 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0542  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x064c A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:88:0x065a A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0696 A[ADDED_TO_REGION] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.ahsim.demulation.DuneHackGraphicsLayoutAdapter.Result extract(byte[] r30, java.io.File r31, com.ahsim.demulation.DuneHackGraphicsLayoutAdapter.ProgressListener r32, byte[] r33, byte[] r34, boolean r35) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1815
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ahsim.demulation.DuneHackGraphicsLayoutAdapter.extract(byte[], java.io.File, com.ahsim.demulation.DuneHackGraphicsLayoutAdapter$ProgressListener, byte[], byte[], boolean):com.ahsim.demulation.DuneHackGraphicsLayoutAdapter$Result");
    }

    private static TrackedCompositeTables findDuneHackTrackedCompositeTables(byte[] rom) {
        for (int off = 0; off <= rom.length - 6; off += 2) {
            try {
                if (be16(rom, off) == 17401) {
                    int tank = (int) (be32u(rom, off + 2) & 16777215);
                    int siege = tank + 1664;
                    if (isTrackedCompositeTable(rom, tank) && isTrackedCompositeTable(rom, siege) && hasLeaA1Reference(rom, siege)) {
                        return new TrackedCompositeTables(tank, siege);
                    }
                }
            } catch (IOException e) {
            }
        }
        return null;
    }

    private static boolean hasLeaA1Reference(byte[] rom, int target) throws IOException {
        for (int off = 0; off <= rom.length - 6; off += 2) {
            if (be16(rom, off) == 17401 && ((int) (be32u(rom, off + 2) & 16777215)) == target) {
                return true;
            }
        }
        return false;
    }

    private static boolean isTrackedCompositeTable(byte[] rom, int table) throws IOException {
        if (table <= 0 || table > rom.length - 1664) {
            return false;
        }
        for (int i = 0; i < 64; i++) {
            int layout = (i * 26) + table;
            if (be16(rom, layout) != 1) {
                return false;
            }
            for (int piece = 0; piece < 2; piece++) {
                int p = layout + 2 + (piece * 12);
                int size = be16(rom, p + 6);
                int pattern = be16(rom, p + 8) & 2047;
                int wt = ((size >>> 10) & 3) + 1;
                int ht = ((size >>> 8) & 3) + 1;
                if (pattern < 922 || (wt * ht) + pattern > 2048) {
                    return false;
                }
            }
        }
        return true;
    }

    private static byte[] buildDuneHackTrackedDirectLayouts(byte[] rom, TrackedCompositeTables tables, byte[] baseDirectLayouts) throws IOException {
        if (baseDirectLayouts != null) {
            int i = 8;
            if (baseDirectLayouts.length >= 8 && baseDirectLayouts[0] == 68) {
                int i2 = 1;
                if (baseDirectLayouts[1] == 68) {
                    int i3 = 2;
                    if (baseDirectLayouts[2] == 73 && baseDirectLayouts[3] == 82 && be16(baseDirectLayouts, 4) == 1 && be16(baseDirectLayouts, 6) == 156) {
                        byte[] out = (byte[]) baseDirectLayouts.clone();
                        int p = 8;
                        int replaced = 0;
                        int entry = 0;
                        while (entry < 156) {
                            if (p > out.length - i) {
                                throw new IOException("BASE DDIR entry truncated");
                            }
                            int kind = out[p] & 255;
                            int index = out[p + 1] & 255;
                            int pieces = be16(out, p + 2);
                            int p2 = p + 8;
                            int bytes = pieces * 12;
                            if (pieces < i2 || pieces > 32 || p2 > out.length - bytes) {
                                throw new IOException("BASE DDIR pieces truncated");
                            }
                            if ((kind == i3 || kind == 3) && index < 64) {
                                if (pieces != i3) {
                                    throw new IOException("BASE tracked DDIR shape mismatch");
                                }
                                int source = (kind == i3 ? tables.tank : tables.siege) + (index * 26);
                                if (be16(rom, source) == i2) {
                                    System.arraycopy(rom, source + 2, out, p2, 24);
                                    replaced++;
                                } else {
                                    throw new IOException("R79 tracked layout shape changed");
                                }
                            }
                            p = p2 + bytes;
                            entry++;
                            i2 = 1;
                            i = 8;
                            i3 = 2;
                        }
                        if (p != out.length || replaced != 128) {
                            throw new IOException("R79 tracked DDIR replacement coverage mismatch");
                        }
                        return out;
                    }
                }
            }
        }
        throw new IOException("BASE direct-layout catalog shape mismatch");
    }

    private static TerrainTable findTerrainTable(byte[] rom) throws IOException {
        int firstCount;
        ArrayList<TerrainTable> candidates = new ArrayList<>();
        for (int off = 0; off <= rom.length - 8; off += 2) {
            int flags = be16(rom, off);
            if ((32768 & flags) != 0 && (firstCount = flags & 32767) > 0 && firstCount <= 922) {
                TerrainTable candidate = parseTerrainTableCandidate(rom, off);
                if (candidate != null) {
                    candidates.add(candidate);
                }
                if (candidates.size() > 64) {
                    break;
                }
            }
        }
        if (candidates.isEmpty()) {
            throw new IOException("relocated terrain loader not found");
        }
        TerrainTable best = null;
        int bestRefs = -1;
        boolean tie = false;
        Iterator<TerrainTable> it = candidates.iterator();
        while (it.hasNext()) {
            TerrainTable c = it.next();
            int refs = countAbsoluteReferences(rom, c.offset);
            if (c.paletteOffset >= 0) {
                refs += 1000;
            }
            if (refs > bestRefs) {
                best = c;
                bestRefs = refs;
                tie = false;
            } else if (refs == bestRefs) {
                tie = true;
            }
        }
        if (best == null || best.paletteOffset < 0) {
            throw new IOException("terrain loader found but resource entry/palette is not proven");
        }
        if (!tie || bestRefs >= 1000) {
            return best;
        }
        throw new IOException("terrain loader is ambiguous");
    }

    private static TerrainTable parseTerrainTableCandidate(byte[] rom, int off) {
        int count;
        int table = off;
        int total = 0;
        int firstPattern = 0;
        try {
            ArrayList<PatternChunk> chunks = new ArrayList<>();
            for (int i = 0; i < 32; i++) {
                int flags = be16(rom, table);
                if (flags == 0) {
                    if (total == 922 && !chunks.isEmpty()) {
                        int palette = findTerrainPaletteForTable(rom, off);
                        return new TerrainTable(off, palette, chunks);
                    }
                    return null;
                }
                try {
                    if ((32768 & flags) != 0 && (count = flags & 32767) > 0 && total <= 922 - count) {
                        long sourceWord = be32u(rom, table + 2);
                        int source = (int) (16777215 & sourceWord);
                        if (source > 0 && source < rom.length) {
                            int bytes = count * 32;
                            boolean raw = (2147483648L & sourceWord) != 0;
                            if (raw) {
                                copy(rom, source, bytes);
                            } else {
                                decompress(rom, source, bytes);
                            }
                            chunks.add(new PatternChunk(firstPattern, count, source, raw));
                            firstPattern += count;
                            total += count;
                            table += 6;
                            if (table > rom.length - 2) {
                                return null;
                            }
                        }
                        return null;
                    }
                    return null;
                } catch (IOException e) {
                } catch (RuntimeException e2) {
                }
            }
        } catch (IOException | RuntimeException e3) {
        }
        return null;
    }

    private static int findTerrainPaletteForTable(byte[] rom, int tableOffset) throws IOException {
        int palette;
        int found = -1;
        for (int off = 0; off <= rom.length - 16; off += 2) {
            if (((int) (be32u(rom, off) & 16777215)) == tableOffset && be32u(rom, off + 4) == 0 && be32u(rom, off + 12) == 0 && (palette = (int) (be32u(rom, off + 8) & 16777215)) > 0 && palette <= rom.length - 128) {
                if (found >= 0 && found != palette) {
                    throw new IOException("multiple terrain palette entries");
                }
                found = palette;
            }
        }
        return found;
    }

    private static byte[] buildTerrainPatterns(byte[] rom, TerrainTable table) throws IOException {
        byte[] out = new byte[29504];
        int dstPattern = 0;
        for (PatternChunk chunk : table.chunks) {
            int bytes = chunk.count * 32;
            byte[] decoded = chunk.raw ? copy(rom, chunk.source, bytes) : decompress(rom, chunk.source, bytes);
            System.arraycopy(decoded, 0, out, dstPattern * 32, bytes);
            dstPattern += chunk.count;
        }
        if (dstPattern != 922) {
            throw new IOException("terrain pattern coverage mismatch");
        }
        return out;
    }

    private static RawTerrainBlock findDuneHackRawTerrainBlock(byte[] rom, boolean allowSparseR79Terrain) throws IOException {
        char c;
        int i;
        int windowWords;
        int patternBytes;
        byte[] bArr = rom;
        int patternBytes2 = 29504;
        int windowWords2 = DUNEHACK_METATILE_WORDS;
        char c2 = 2;
        int words = bArr.length / 2;
        if (words < DUNEHACK_METATILE_WORDS || bArr.length < 29504 + 11520) {
            throw new IOException("ROM too small for DuneHack raw terrain block");
        }
        int i2 = 922;
        int[] indexCounts = new int[922];
        int[] paletteCounts = new int[4];
        int distinct = 0;
        int external = 0;
        int outsideVram = 0;
        int high = 0;
        int flips = 0;
        int i3 = 0;
        while (true) {
            c = c2;
            if (i3 >= DUNEHACK_METATILE_WORDS) {
                break;
            }
            int value = be16(bArr, i3 * 2);
            int index = value & 2047;
            if (index < 922) {
                int i4 = indexCounts[index];
                indexCounts[index] = i4 + 1;
                if (i4 == 0) {
                    distinct++;
                }
                if (index >= 850) {
                    high++;
                }
            } else if (index < 2048) {
                external++;
            } else {
                outsideVram++;
            }
            int i5 = (value >>> 13) & 3;
            paletteCounts[i5] = paletteCounts[i5] + 1;
            if ((value & 6144) != 0) {
                flips++;
            }
            i3++;
            c2 = c;
        }
        ArrayList<RawTerrainBlock> candidates = new ArrayList<>();
        int startWord = 0;
        while (true) {
            if (startWord > words - windowWords2) {
                i = 0;
                break;
            }
            int descriptorOffset = startWord * 2;
            i = 0;
            int patternOffset = descriptorOffset + 11520;
            int requiredDistinct = allowSparseR79Terrain ? 850 : i2;
            if (outsideVram != 0 || external <= 0 || external > 32) {
                windowWords = windowWords2;
                patternBytes = patternBytes2;
            } else if (distinct >= requiredDistinct) {
                patternBytes = patternBytes2;
                if (high < 16 || flips < 16 || paletteCounts[0] <= 0 || paletteCounts[1] <= 0 || paletteCounts[c] <= 0 || paletteCounts[3] <= 0 || patternOffset > bArr.length - patternBytes) {
                    windowWords = windowWords2;
                } else if (!isBlankTerrainMetatile(bArr, descriptorOffset)) {
                    windowWords = windowWords2;
                } else if (isBlankTerrainMetatile(bArr, descriptorOffset + 32)) {
                    windowWords = windowWords2;
                } else if (!isBlankPattern(bArr, patternOffset)) {
                    windowWords = windowWords2;
                } else if (isBlankPattern(bArr, patternOffset + 32)) {
                    windowWords = windowWords2;
                } else {
                    int descriptorRefs = countAbsoluteReferencesBefore(bArr, descriptorOffset, descriptorOffset);
                    int patternRefs = countAbsoluteReferences(bArr, patternOffset);
                    if (descriptorRefs <= 0 || patternRefs <= 0) {
                        windowWords = windowWords2;
                    } else {
                        windowWords = windowWords2;
                        candidates.add(new RawTerrainBlock(descriptorOffset, patternOffset, external, maxMetatilePatternIndex(bArr, descriptorOffset, 360)));
                    }
                }
            } else {
                patternBytes = patternBytes2;
                windowWords = windowWords2;
            }
            int patternBytes3 = words - windowWords;
            if (startWord == patternBytes3) {
                break;
            }
            int oldValue = be16(bArr, startWord * 2);
            int oldIndex = oldValue & 2047;
            int words2 = words;
            if (oldIndex < 922) {
                int i6 = indexCounts[oldIndex] - 1;
                indexCounts[oldIndex] = i6;
                if (i6 == 0) {
                    distinct--;
                }
                if (oldIndex >= 850) {
                    high--;
                }
            } else if (oldIndex < 2048) {
                external--;
            } else {
                outsideVram--;
            }
            paletteCounts[(oldValue >>> 13) & 3] = paletteCounts[r3] - 1;
            if ((oldValue & 6144) != 0) {
                flips--;
            }
            int newValue = be16(bArr, (startWord + windowWords) * 2);
            int newIndex = newValue & 2047;
            if (newIndex < 922) {
                int i7 = indexCounts[newIndex];
                indexCounts[newIndex] = i7 + 1;
                if (i7 == 0) {
                    distinct++;
                }
                if (newIndex >= 850) {
                    high++;
                }
            } else if (newIndex < 2048) {
                external++;
            } else {
                outsideVram++;
            }
            int i8 = (newValue >>> 13) & 3;
            paletteCounts[i8] = paletteCounts[i8] + 1;
            if ((newValue & 6144) != 0) {
                flips++;
            }
            startWord++;
            bArr = rom;
            patternBytes2 = patternBytes;
            words = words2;
            windowWords2 = windowWords;
            i2 = 922;
        }
        if (candidates.isEmpty()) {
            throw new IOException("DuneHack 360+922 raw terrain block not found");
        }
        if (candidates.size() != 1) {
            throw new IOException("DuneHack raw terrain block is ambiguous");
        }
        return candidates.get(i);
    }

    private static DuneHackTerrainBundle buildDuneHackTerrainBundle(byte[] rom, RawTerrainBlock raw, DuneHackResidentLoader loader, boolean allowSparseR79Terrain) throws IOException {
        if (raw == null) {
            throw new IOException("DuneHack terrain block unavailable");
        }
        if (loader == null) {
            throw new IOException("DuneHack resident loader unavailable");
        }
        byte[] descriptors = copy(rom, raw.descriptorOffset, 11520);
        int maxIndex = validateDuneHackMetatileData(descriptors, allowSparseR79Terrain);
        if (maxIndex != raw.maxPatternIndex) {
            throw new IOException("DuneHack terrain descriptor max-pattern proof changed");
        }
        if (maxIndex > DUNEHACK_RESIDENT_MAIN_LAST) {
            throw new IOException("DuneHack terrain references VRAM outside proven resident main bank: " + maxIndex);
        }
        int patternCount = Math.max(922, maxIndex + 1);
        byte[] patterns = new byte[patternCount * 32];
        byte[] terrain = copy(rom, raw.patternOffset, 29504);
        System.arraycopy(terrain, 0, patterns, 0, terrain.length);
        if (patternCount > 922) {
            int sharedCount = patternCount - 922;
            byte[] shared = copy(rom, loader.streamSource, sharedCount * 32);
            System.arraycopy(shared, 0, patterns, 29504, shared.length);
        }
        return new DuneHackTerrainBundle(patterns, descriptors, patternCount, maxIndex);
    }

    private static int validateDuneHackMetatileData(byte[] data, boolean allowSparseR79Terrain) throws IOException {
        if (data == null || data.length != 11520) {
            throw new IOException("DuneHack metatile size mismatch");
        }
        boolean[] lowUsed = new boolean[922];
        boolean[] palettes = new boolean[4];
        int distinctLow = 0;
        int externalWords = 0;
        int maxIndex = -1;
        int flips = 0;
        for (int off = 0; off < data.length; off += 2) {
            int value = be16(data, off);
            int index = value & 2047;
            if (index < 922) {
                if (!lowUsed[index]) {
                    lowUsed[index] = true;
                    distinctLow++;
                }
            } else {
                externalWords++;
                if (index > DUNEHACK_RESIDENT_MAIN_LAST) {
                    throw new IOException("DuneHack metatile index outside proven shared VRAM: " + index);
                }
            }
            maxIndex = Math.max(maxIndex, index);
            palettes[3 & (value >>> 13)] = true;
            if ((value & 6144) != 0) {
                flips++;
            }
        }
        int requiredDistinct = allowSparseR79Terrain ? 850 : 922;
        if (distinctLow < requiredDistinct || externalWords <= 0 || externalWords > 32 || flips < 16 || !palettes[0] || !palettes[1] || !palettes[2] || !palettes[3] || !isBlankTerrainMetatile(data, 0) || isBlankTerrainMetatile(data, 32)) {
            throw new IOException("DuneHack metatile structural coverage is too weak");
        }
        return maxIndex;
    }

    private static int maxMetatilePatternIndex(byte[] data, int offset, int metatileCount) throws IOException {
        int bytes = metatileCount * 32;
        if (offset < 0 || offset > data.length - bytes) {
            throw new IOException("metatile window outside ROM");
        }
        int max = -1;
        for (int p = offset; p < offset + bytes; p += 2) {
            max = Math.max(max, be16(data, p) & 2047);
        }
        return max;
    }

    private static int findDuneHackTerrainPalette(byte[] rom) throws IOException {
        byte[] suffix = {-62, -120, 66, 56, -66, -99, 65, -8, -34, -92};
        int found = -1;
        for (int off = 0; off <= ((rom.length - 2) - 4) - suffix.length; off += 2) {
            if ((rom[off] & 255) == 33 && (rom[off + 1] & 255) == 252) {
                boolean match = true;
                int i = 0;
                while (true) {
                    if (i >= suffix.length) {
                        break;
                    }
                    if (rom[off + 6 + i] != suffix[i]) {
                        match = false;
                        break;
                    }
                    i++;
                }
                if (match) {
                    int palette = (int) (be32u(rom, off + 2) & 16777215);
                    if (!isDuneHackCramPalette(rom, palette)) {
                        continue;
                    } else {
                        if (found >= 0 && found != palette) {
                            throw new IOException("multiple DuneHack world palettes");
                        }
                        found = palette;
                    }
                } else {
                    continue;
                }
            }
        }
        if (found < 0) {
            throw new IOException("DuneHack world palette pointer not found");
        }
        return found;
    }

    private static boolean isGenesisPalette(byte[] rom, int offset) {
        if (offset <= 0 || offset > rom.length - 128) {
            return false;
        }
        int distinct = 0;
        int[] seen = new int[64];
        int seenCount = 0;
        for (int i = 0; i < 64; i++) {
            try {
                int value = be16(rom, (i * 2) + offset);
                if ((61713 & value) != 0) {
                    return false;
                }
                boolean known = false;
                int j = 0;
                while (true) {
                    if (j >= seenCount) {
                        break;
                    }
                    if (seen[j] == value) {
                        known = true;
                        break;
                    }
                    j++;
                }
                if (!known) {
                    int seenCount2 = seenCount + 1;
                    try {
                        seen[seenCount] = value;
                        distinct++;
                        seenCount = seenCount2;
                    } catch (IOException e) {
                        return false;
                    }
                }
            } catch (IOException e2) {
            }
        }
        return distinct >= 8;
    }

    private static boolean isDuneHackCramPalette(byte[] rom, int offset) {
        if (offset <= 0 || offset > rom.length - 128) {
            return false;
        }
        int[] seen = new int[64];
        int seenCount = 0;
        for (int i = 0; i < 64; i++) {
            try {
                int visible = be16(rom, (i * 2) + offset) & 3822;
                boolean known = false;
                int j = 0;
                while (true) {
                    if (j >= seenCount) {
                        break;
                    }
                    if (seen[j] == visible) {
                        known = true;
                        break;
                    }
                    j++;
                }
                if (!known) {
                    int seenCount2 = seenCount + 1;
                    try {
                        seen[seenCount] = visible;
                        seenCount = seenCount2;
                    } catch (IOException e) {
                        return false;
                    }
                }
            } catch (IOException e2) {
            }
        }
        return seenCount >= 8;
    }

    private static byte[] copyNormalizedCramPalette(byte[] rom, int offset) throws IOException {
        if (offset <= 0 || offset > rom.length - 128) {
            throw new IOException("DuneHack CRAM palette outside ROM");
        }
        byte[] out = new byte[128];
        for (int i = 0; i < 64; i++) {
            int visible = be16(rom, (i * 2) + offset) & 3822;
            out[i * 2] = (byte) ((visible >>> 8) & 255);
            out[(i * 2) + 1] = (byte) (visible & 255);
        }
        return out;
    }

    private static boolean isBlankPattern(byte[] data, int offset) {
        if (data == null || offset < 0 || offset > data.length - 32) {
            return false;
        }
        for (int i = 0; i < 32; i++) {
            if (data[offset + i] != 0) {
                return false;
            }
        }
        return true;
    }

    private static int findMetatileTable(byte[] rom) throws IOException {
        int i;
        char c;
        int i2;
        char c2;
        if (rom.length < METATILE_BYTES) {
            throw new IOException("ROM too small for metatiles");
        }
        int i3 = 922;
        int[] indexCounts = new int[922];
        int[] paletteCounts = new int[4];
        int invalid = 0;
        int distinct = 0;
        int high = 0;
        int flips = 0;
        char c3 = 2;
        int words = rom.length / 2;
        if (words < METATILE_WORDS) {
            throw new IOException("ROM too small for metatile window");
        }
        int i4 = 0;
        while (true) {
            i = 850;
            c = 3;
            i2 = 1;
            if (i4 >= METATILE_WORDS) {
                break;
            }
            int value = be16(rom, i4 * 2);
            char c4 = c3;
            int index = value & 2047;
            if (index >= 922) {
                invalid++;
            } else {
                int i5 = indexCounts[index];
                indexCounts[index] = i5 + 1;
                if (i5 == 0) {
                    distinct++;
                }
                if (index >= 850) {
                    high++;
                }
            }
            int i6 = (value >>> 13) & 3;
            paletteCounts[i6] = paletteCounts[i6] + 1;
            if ((value & 6144) != 0) {
                flips++;
            }
            i4++;
            c3 = c4;
        }
        char c5 = c3;
        ArrayList<Integer> candidates = new ArrayList<>();
        int startWord = 0;
        while (startWord <= words - 5792) {
            if (invalid != 0 || distinct != i3 || high < 16 || flips < 16 || paletteCounts[0] <= 0 || paletteCounts[i2] <= 0 || paletteCounts[c5] <= 0 || paletteCounts[c] <= 0) {
                c2 = c;
            } else if (!isBlankTerrainMetatile(rom, startWord * 2)) {
                c2 = c;
            } else if (isBlankTerrainMetatile(rom, (startWord * 2) + 32)) {
                c2 = c;
            } else {
                candidates.add(Integer.valueOf(startWord * 2));
                c2 = c;
                if (candidates.size() > 20000) {
                    throw new IOException("too many metatile candidates");
                }
            }
            if (startWord == words - 5792) {
                break;
            }
            int oldValue = be16(rom, startWord * 2);
            int oldIndex = oldValue & 2047;
            if (oldIndex >= i3) {
                invalid--;
            } else {
                int i7 = indexCounts[oldIndex] - i2;
                indexCounts[oldIndex] = i7;
                if (i7 == 0) {
                    distinct--;
                }
                if (oldIndex >= i) {
                    high--;
                }
            }
            paletteCounts[(oldValue >>> 13) & 3] = paletteCounts[r15] - 1;
            if ((oldValue & 6144) != 0) {
                flips--;
            }
            int newWord = startWord + METATILE_WORDS;
            int i8 = i2;
            int newValue = be16(rom, newWord * 2);
            int newIndex = newValue & 2047;
            if (newIndex >= i3) {
                invalid++;
            } else {
                int i9 = indexCounts[newIndex];
                indexCounts[newIndex] = i9 + 1;
                if (i9 == 0) {
                    distinct++;
                }
                if (newIndex >= 850) {
                    high++;
                }
            }
            int i10 = (newValue >>> 13) & 3;
            paletteCounts[i10] = paletteCounts[i10] + 1;
            if ((newValue & 6144) != 0) {
                flips++;
            }
            startWord++;
            c = c2;
            i2 = i8;
            i3 = 922;
            i = 850;
        }
        if (candidates.isEmpty()) {
            throw new IOException("relocated metatile table not found");
        }
        int best = -1;
        int bestRefs = 0;
        boolean tie = false;
        Iterator<Integer> it = candidates.iterator();
        while (it.hasNext()) {
            int candidate = it.next().intValue();
            int count = countAbsoluteReferencesBefore(rom, candidate, Math.max(0, candidate - 11584));
            if (count > bestRefs) {
                best = candidate;
                bestRefs = count;
                tie = false;
            } else if (count == bestRefs && count > 0) {
                tie = true;
            }
        }
        if (best < 0 || bestRefs == 0) {
            throw new IOException("metatile window found but exact start is unreferenced");
        }
        if (tie) {
            throw new IOException("metatile table start is ambiguous");
        }
        return best;
    }

    private static void validateMetatileData(byte[] data) throws IOException {
        if (data == null || data.length != METATILE_BYTES) {
            throw new IOException("metatile size mismatch");
        }
        boolean[] palettes = new boolean[4];
        int distinct = 0;
        boolean[] used = new boolean[922];
        for (int off = 0; off < data.length; off += 2) {
            int value = be16(data, off);
            int index = value & 2047;
            if (index >= 922) {
                throw new IOException("metatile index outside terrain patterns");
            }
            if (!used[index]) {
                used[index] = true;
                distinct++;
            }
            palettes[3 & (value >>> 13)] = true;
        }
        if (distinct != 922 || !isBlankTerrainMetatile(data, 0) || isBlankTerrainMetatile(data, 32) || !palettes[0] || !palettes[1] || !palettes[2] || !palettes[3]) {
            throw new IOException("metatile structural coverage is too weak");
        }
    }

    private static boolean isBlankTerrainMetatile(byte[] data, int offset) {
        if (data == null || offset < 0 || offset > data.length - 32) {
            return false;
        }
        for (int i = 0; i < 32; i++) {
            if (data[offset + i] != 0) {
                return false;
            }
        }
        return true;
    }

    private static boolean hasAdapted(Map<String, AssetStatus> status, String relativePath) {
        AssetStatus item = status.get(relativePath);
        return item != null && item.adapted;
    }

    private static SpriteLoader findSpriteLoader(byte[] rom) throws IOException {
        ArrayList<SpriteLoader> candidates = new ArrayList<>();
        for (int off = 0; off <= rom.length - 12; off += 2) {
            long d3 = be32u(rom, off);
            if (((d3 >>> 16) & 65535) == (65535 & 29504)) {
                SpriteLoader candidate = parseSpriteLoaderCandidate(rom, off);
                if (candidate != null) {
                    candidates.add(candidate);
                }
                if (candidates.size() > 32) {
                    break;
                }
            }
        }
        if (candidates.isEmpty()) {
            throw new IOException("relocated tactical sprite loader not found");
        }
        SpriteLoader best = null;
        int bestRefs = -1;
        boolean tie = false;
        Iterator<SpriteLoader> it = candidates.iterator();
        while (it.hasNext()) {
            SpriteLoader c = it.next();
            int refs = countAbsoluteReferences(rom, c.offset);
            if (refs > bestRefs) {
                best = c;
                bestRefs = refs;
                tie = false;
            } else if (refs == bestRefs) {
                tie = true;
            }
        }
        if (best == null) {
            throw new IOException("tactical sprite loader not proven");
        }
        if (!tie || bestRefs <= 0) {
            return best;
        }
        throw new IOException("tactical sprite loader is ambiguous");
    }

    private static SpriteLoader parseSpriteLoaderCandidate(byte[] rom, int off) {
        int table = off;
        SpriteLoader spriteLoader = null;
        try {
            ArrayList<PatternChunk> chunks = new ArrayList<>();
            int minPattern = Integer.MAX_VALUE;
            int maxPattern = -1;
            int loaded = 0;
            int i = 0;
            while (i < 128) {
                long d3 = be32u(rom, table);
                int table2 = table + 4;
                if (d3 == 0) {
                    if (chunks.size() >= 8 && loaded >= 500 && minPattern == 922) {
                        if (maxPattern == 2047) {
                            return new SpriteLoader(off, chunks);
                        }
                    }
                    return spriteLoader;
                }
                try {
                    long sourceWord = be32u(rom, table2);
                    table = table2 + 4;
                    int vramBytes = (int) ((d3 >>> 16) & 65535);
                    SpriteLoader spriteLoader2 = spriteLoader;
                    ArrayList<PatternChunk> chunks2 = chunks;
                    int bytes = ((int) (d3 & 65535)) * 2;
                    if ((vramBytes & 31) != 0 || (bytes & 31) != 0) {
                        return spriteLoader2;
                    }
                    if (bytes <= 0) {
                        return spriteLoader2;
                    }
                    try {
                        int first = vramBytes / 32;
                        int count = bytes / 32;
                        if (first >= 922 && first + count <= 2048) {
                            int loaded2 = loaded;
                            int i2 = i;
                            int source = (int) (sourceWord & 16777215);
                            if (source > 0) {
                                try {
                                    if (source < rom.length) {
                                        boolean raw = (sourceWord & 2147483648L) != 0;
                                        if (raw) {
                                            copy(rom, source, bytes);
                                        } else {
                                            decompress(rom, source, bytes);
                                        }
                                        chunks2.add(new PatternChunk(first, count, source, raw));
                                        int loaded3 = loaded2 + count;
                                        int loaded4 = Math.min(minPattern, first);
                                        minPattern = loaded4;
                                        maxPattern = Math.max(maxPattern, (first + count) - 1);
                                        if (table > rom.length - 4) {
                                            return spriteLoader2;
                                        }
                                        i = i2 + 1;
                                        loaded = loaded3;
                                        chunks = chunks2;
                                        spriteLoader = spriteLoader2;
                                    }
                                } catch (IOException e) {
                                    return spriteLoader2;
                                } catch (RuntimeException e2) {
                                    return spriteLoader2;
                                }
                            }
                            return spriteLoader2;
                        }
                        return spriteLoader2;
                    } catch (IOException | RuntimeException e3) {
                        return spriteLoader2;
                    }
                } catch (IOException e4) {
                    return spriteLoader;
                } catch (RuntimeException e5) {
                    return spriteLoader;
                }
            }
            return spriteLoader;
        } catch (IOException | RuntimeException e6) {
        }
    }

    private static DuneHackResidentLoader findDuneHackResidentLoader(byte[] rom) throws IOException {
        int streamSource;
        int preCmd;
        int pointerCell;
        int preSource;
        ArrayList<DuneHackResidentLoader> found = new ArrayList<>();
        for (int c = 12; c <= rom.length - 32; c += 2) {
            if (be32u(rom, c) == 1933574145 && be16(rom, c - 2) == 9084 && be16(rom, c + 4) == 4 && be16(rom, c - 12) == 16889 && be16(rom, c - 6) == 12860 && be16(rom, c - 4) == 466 && be32u(rom, c + 12) == 1476395011 && be32u(rom, c + 24) == 2038431747 && (streamSource = (int) be32u(rom, c - 10)) > 0 && streamSource <= rom.length - 18048 && c - 20 >= 12 && be32u(rom, preCmd) == 1839202306 && be16(rom, preCmd - 2) == 9084 && be16(rom, preCmd + 4) == 4 && be16(rom, preCmd - 6) == 12860 && be16(rom, preCmd - 4) == 135 && be16(rom, preCmd - 12) == 8313 && (pointerCell = (int) be32u(rom, preCmd - 10)) > 0 && pointerCell <= rom.length - 4 && (preSource = (int) (be32u(rom, pointerCell) & 16777215)) > 0 && preSource <= rom.length - 4352) {
                found.add(new DuneHackResidentLoader(c - 2, pointerCell, preSource, streamSource));
            }
        }
        if (found.isEmpty()) {
            throw new IOException("DuneHack resident VRAM loader not found");
        }
        if (found.size() != 1) {
            throw new IOException("DuneHack resident VRAM loader is ambiguous");
        }
        return found.get(0);
    }

    private static DuneHackStaticBank buildDuneHackStaticPatterns(byte[] rom, DuneHackResidentLoader loader, int visualTable, byte[] baseStaticPatterns) throws IOException {
        if (baseStaticPatterns == null || baseStaticPatterns.length != 36032) {
            throw new IOException("BASE tactical bank unavailable for safe Rebuild merge");
        }
        byte[] out = (byte[]) baseStaticPatterns.clone();
        boolean[] resident = new boolean[2048];
        copyPatternRange(rom, loader.preSource, out, resident, DUNEHACK_RESIDENT_PRE_FIRST, DUNEHACK_RESIDENT_PRE_COUNT);
        int src = loader.streamSource;
        copyPatternRange(rom, src, out, resident, 922, DUNEHACK_RESIDENT_MAIN_COUNT);
        int src2 = src + 14944;
        copyPatternRange(rom, src2, out, resident, DUNEHACK_RESIDENT_D800_FIRST, DUNEHACK_RESIDENT_D800_COUNT);
        int src3 = src2 + 1312;
        copyPatternRange(rom, src3, out, resident, DUNEHACK_RESIDENT_F980_FIRST, 36);
        int i = src3 + 1152;
        int variantFirst = findSingleSpanVisualSource(rom, visualTable, 2032, 10, loader.streamSource);
        if (variantFirst > 0) {
            copyPatternRange(rom, variantFirst, out, resident, 2032, 10);
        }
        int sharedSource = findSingleSpanVisualSource(rom, visualTable, 1525, 9, loader.streamSource);
        if (sharedSource > 0) {
            copyPatternRange(rom, sharedSource, out, resident, 1525, 9);
        }
        int residentCount = 0;
        for (int p = 922; p < 2048; p++) {
            if (resident[p]) {
                residentCount++;
            }
        }
        return new DuneHackStaticBank(out, resident, "DuneHack resident VRAM bridge: " + residentCount + " patterns from MOD, remaining slots BASE");
    }

    private static void copyPatternRange(byte[] rom, int source, byte[] out, boolean[] resident, int firstPattern, int count) throws IOException {
        if (firstPattern < 922 || firstPattern + count > 2048 || count <= 0) {
            throw new IOException("DuneHack resident pattern range is invalid");
        }
        byte[] raw = copy(rom, source, count * 32);
        System.arraycopy(raw, 0, out, (firstPattern - 922) * 32, raw.length);
        for (int p = firstPattern; p < firstPattern + count; p++) {
            resident[p] = true;
        }
    }

    private static int findSingleSpanVisualSource(byte[] rom, int table, int firstPattern, int patternCount, int nearSource) throws IOException {
        int distance;
        byte[] bArr = rom;
        int best = -1;
        int bestDistance = Integer.MAX_VALUE;
        int visualId = 0;
        while (visualId < VISUAL_ID_LIMIT) {
            int entry = table + (visualId * 8);
            long sourceWord = be32u(bArr, entry);
            int source = (int) (sourceWord & 16777215);
            int layout = (int) (16777215 & be32u(bArr, entry + 4));
            if (source > 0 && source <= bArr.length - (patternCount * 32)) {
                if (isValidLayout(bArr, layout)) {
                    int pieces = be16(bArr, layout) + 1;
                    if (pieces == 1) {
                        int size = be16(bArr, layout + 2 + 6);
                        int attr = be16(bArr, layout + 2 + 8);
                        int wt = ((size >>> 10) & 3) + 1;
                        int ht = ((size >>> 8) & 3) + 1;
                        if ((attr & 2047) == firstPattern && wt * ht == patternCount && (distance = Math.abs(source - nearSource)) < bestDistance) {
                            best = source;
                            bestDistance = distance;
                        }
                    }
                }
            }
            visualId++;
            bArr = rom;
        }
        return best;
    }

    private static byte[] buildDuneHackDynamicCatalog(byte[] rom, int table, boolean[] resident) throws IOException {
        boolean z;
        ByteArrayOutputStream bytes;
        boolean z2;
        int pieceCount;
        ByteArrayOutputStream bytes2 = new ByteArrayOutputStream(32768);
        DataOutputStream out = new DataOutputStream(bytes2);
        out.writeBytes("DDYN");
        boolean z3 = true;
        out.writeShort(1);
        out.writeShort(0);
        int count = 0;
        int visualId = 0;
        while (visualId < VISUAL_ID_LIMIT) {
            int entry = table + (visualId * 8);
            long sourceWord = be32u(rom, entry);
            int layout = (int) (be32u(rom, entry + 4) & 16777215);
            if (isValidLayout(rom, layout)) {
                int high = (int) ((sourceWord >>> 24) & 255);
                boolean[] used = new boolean[2048];
                z = z3;
                int pieceCount2 = be16(rom, layout) + 1;
                int i = 0;
                while (i < pieceCount2) {
                    int piece = layout + 2 + (i * 12);
                    int size = be16(rom, piece + 6);
                    int attr = be16(rom, piece + 8);
                    int wt = ((size >>> 10) & 3) + 1;
                    int ht = ((size >>> 8) & 3) + 1;
                    ByteArrayOutputStream bytes3 = bytes2;
                    int first = attr & 2047;
                    while (true) {
                        pieceCount = pieceCount2;
                        int pieceCount3 = first + (wt * ht);
                        if (first < pieceCount3) {
                            used[first] = z;
                            first++;
                            pieceCount2 = pieceCount;
                        }
                    }
                    i++;
                    bytes2 = bytes3;
                    pieceCount2 = pieceCount;
                }
                bytes = bytes2;
                int min = Integer.MAX_VALUE;
                int max = -1;
                int needed = 0;
                int p = 0;
                while (p < 2048) {
                    boolean dynamic = high == 128 ? used[p] : (!used[p] || p < 922 || resident[p]) ? false : z;
                    if (dynamic) {
                        min = Math.min(min, p);
                        max = Math.max(max, p);
                        needed++;
                    }
                    p++;
                }
                if (needed != 0) {
                    if ((max - min) + 1 != needed) {
                        throw new IOException("visual " + visualId + " needs disjoint unresolved pattern ranges");
                    }
                    int source = (int) (sourceWord & 16777215);
                    if (source <= 0 || source > rom.length - (needed * 32)) {
                        throw new IOException("visual " + visualId + " has no bounded raw source for unresolved patterns");
                    }
                    out.writeShort(visualId);
                    out.writeShort(min);
                    out.writeShort(needed);
                    z2 = false;
                    out.writeShort(0);
                    out.write(copy(rom, source, needed * 32));
                    count++;
                    visualId++;
                    z3 = z;
                    bytes2 = bytes;
                }
            } else {
                bytes = bytes2;
                z = z3;
            }
            z2 = false;
            visualId++;
            z3 = z;
            bytes2 = bytes;
        }
        ByteArrayOutputStream bytes4 = bytes2;
        out.flush();
        if (count < 8 || count > VISUAL_ID_LIMIT) {
            throw new IOException("DuneHack dynamic coverage is implausible");
        }
        byte[] result = bytes4.toByteArray();
        result[6] = (byte) ((count >>> 8) & 255);
        result[7] = (byte) (count & 255);
        return result;
    }

    private static byte[] buildStaticPatterns(byte[] rom, SpriteLoader loader) throws IOException {
        byte[] vram = new byte[65536];
        for (PatternChunk chunk : loader.chunks) {
            int bytes = chunk.count * 32;
            byte[] decoded = chunk.raw ? copy(rom, chunk.source, bytes) : decompress(rom, chunk.source, bytes);
            System.arraycopy(decoded, 0, vram, chunk.firstPattern * 32, bytes);
        }
        byte[] out = new byte[36032];
        System.arraycopy(vram, 29504, out, 0, out.length);
        return out;
    }

    private static int findVisualTable(byte[] rom) throws IOException {
        ArrayList<Integer> candidates = new ArrayList<>();
        for (int phase = 0; phase < 8; phase += 2) {
            int runLength = 0;
            for (int off = phase; off <= rom.length - 8; off += 8) {
                int high = rom[off] & 255;
                if (high == 0 || high == 127 || high == 128) {
                    if (runLength == 0) {
                    }
                    runLength++;
                    if (runLength >= VISUAL_ID_LIMIT) {
                        int candidate = off - 2792;
                        VisualStats stats = visualStats(rom, candidate);
                        if (stats.valid >= 180 && stats.dynamic >= 8 && stats.dynamic <= stats.valid) {
                            candidates.add(Integer.valueOf(candidate));
                            if (candidates.size() > 4096) {
                                throw new IOException("too many visual-table candidates");
                            }
                        }
                    } else {
                        continue;
                    }
                } else {
                    runLength = 0;
                }
            }
        }
        if (candidates.isEmpty()) {
            throw new IOException("relocated visual table not found");
        }
        Set<Integer> unique = new HashSet<>(candidates);
        int best = -1;
        int bestRefs = 0;
        boolean tie = false;
        Iterator<Integer> it = unique.iterator();
        while (it.hasNext()) {
            int candidate2 = it.next().intValue();
            int refs = countAbsoluteReferencesBefore(rom, candidate2, Math.max(0, candidate2 - 2800));
            if (refs > bestRefs) {
                best = candidate2;
                bestRefs = refs;
                tie = false;
            } else if (refs == bestRefs && refs > 0) {
                tie = true;
            }
        }
        if (best < 0 || bestRefs == 0) {
            throw new IOException("visual-table run found but exact start is unreferenced");
        }
        if (tie) {
            throw new IOException("visual table start is ambiguous");
        }
        return best;
    }

    private static VisualStats visualStats(byte[] rom, int table) {
        int valid = 0;
        int dynamic = 0;
        for (int visualId = 0; visualId < VISUAL_ID_LIMIT; visualId++) {
            int entry = (visualId * 8) + table;
            try {
                if (entry > rom.length - 8) {
                    break;
                }
                long sourceWord = be32u(rom, entry);
                int layout = (int) (be32u(rom, entry + 4) & 16777215);
                if (isValidLayout(rom, layout)) {
                    valid++;
                    if (((sourceWord >>> 24) & 255) == 128) {
                        dynamic++;
                    }
                }
            } catch (IOException e) {
            }
        }
        return new VisualStats(valid, dynamic);
    }

    private static byte[] buildVisualCatalog(byte[] rom, int table) throws IOException {
        int i;
        ByteArrayOutputStream bytes = new ByteArrayOutputStream(8192);
        DataOutputStream out = new DataOutputStream(bytes);
        out.writeBytes("DVIS");
        out.writeShort(1);
        out.writeShort(0);
        int count = 0;
        for (int visualId = 0; visualId < VISUAL_ID_LIMIT; visualId++) {
            int entry = table + (visualId * 8);
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
        if (count < 180 || count > VISUAL_ID_LIMIT) {
            throw new IOException("DuneHack visual coverage is implausible");
        }
        byte[] result = bytes.toByteArray();
        result[6] = (byte) ((count >>> 8) & 255);
        result[7] = (byte) (count & 255);
        return result;
    }

    private static byte[] buildDynamicCatalog(byte[] rom, int table) throws IOException {
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
            int entry = table + (visualId * 8);
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
                    if (maxPattern < minPattern || maxPattern >= 2048) {
                        throw new IOException("DuneHack dynamic layout pattern range is invalid");
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
        ByteArrayOutputStream bytes3 = bytes2;
        out.flush();
        if (count < 8 || count > VISUAL_ID_LIMIT) {
            throw new IOException("DuneHack dynamic coverage is implausible");
        }
        byte[] result = bytes3.toByteArray();
        result[6] = (byte) ((count >>> 8) & 255);
        result[7] = (byte) (count & 255);
        return result;
    }

    private static boolean isValidLayout(byte[] rom, int layout) throws IOException {
        int pieces;
        if (layout <= 0 || layout > rom.length - 2 || (pieces = be16(rom, layout) + 1) < 1 || pieces > 32 || layout > (rom.length - 2) - (pieces * 12)) {
            return false;
        }
        for (int i = 0; i < pieces; i++) {
            int p = layout + 2 + (i * 12);
            int size = be16(rom, p + 6);
            int attr = be16(rom, p + 8);
            int wt = ((size >>> 10) & 3) + 1;
            int ht = ((size >>> 8) & 3) + 1;
            int first = attr & 2047;
            if ((wt * ht) + first > 2048) {
                return false;
            }
        }
        return true;
    }

    private static int countAbsoluteReferencesBefore(byte[] rom, int target, int exclusiveEnd) {
        if (target < 0 || target > 16777215) {
            return 0;
        }
        int limit = Math.min(Math.max(0, exclusiveEnd), rom.length - 3);
        int count = 0;
        for (int off = 0; off < limit; off += 2) {
            if (((int) (be32uUnchecked(rom, off) & 16777215)) == target) {
                count++;
            }
        }
        return count;
    }

    private static int countAbsoluteReferences(byte[] rom, int target) {
        if (target < 0 || target > 16777215) {
            return 0;
        }
        int count = 0;
        for (int off = 0; off <= rom.length - 4; off += 2) {
            if (((int) (be32uUnchecked(rom, off) & 16777215)) == target) {
                count++;
            }
        }
        return count;
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x014c, code lost:
    
        throw new java.io.IOException("media long-copy range error");
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x00d2, code lost:
    
        throw new java.io.IOException("media absolute-copy range error");
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
        throw new UnsupportedOperationException("Method not decompiled: com.ahsim.demulation.DuneHackGraphicsLayoutAdapter.decompress(byte[], int, int):byte[]");
    }

    private static void writeAsset(File root, String path, byte[] data) throws IOException {
        File file = safeChild(root, path);
        File parent = file.getParentFile();
        if (parent != null && !parent.mkdirs() && !parent.isDirectory()) {
            throw new IOException("Could not create adapter directory");
        }
        FileOutputStream out = new FileOutputStream(file);
        try {
            out.write(data);
            out.getFD().sync();
            out.close();
        } catch (Throwable th) {
            try {
                out.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    private static void fallback(Map<String, AssetStatus> status, String path, IOException e) {
        fallback(status, path, shortMessage(e));
    }

    private static void fallback(Map<String, AssetStatus> status, String path, String detail) {
        status.put(path, new AssetStatus(path, false, 0, detail));
    }

    private static File safeChild(File root, String relativePath) throws IOException {
        File cr = root.getCanonicalFile();
        File child = new File(cr, relativePath).getCanonicalFile();
        String rp = cr.getPath();
        String cp = child.getPath();
        if (cp.equals(rp) || cp.startsWith(rp + File.separator)) {
            return child;
        }
        throw new IOException("Adapter path escaped staging root");
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
        return be32uUnchecked(data, offset);
    }

    private static long be32uUnchecked(byte[] data, int offset) {
        return ((data[offset] & 255) << 24) | ((data[offset + 1] & 255) << 16) | ((data[offset + 2] & 255) << 8) | (data[offset + 3] & 255);
    }

    private static void checkRange(byte[] data, int offset, int length) throws IOException {
        if (offset < 0 || length < 0 || offset > data.length - length) {
            throw new IOException("ROM media pointer outside image");
        }
    }

    private static String hex(int value) {
        return String.format(Locale.US, "%06X", Integer.valueOf(value));
    }

    private static String shortMessage(Throwable e) {
        String message = e == null ? null : e.getMessage();
        return (message == null || message.trim().isEmpty()) ? "structural mismatch" : message.trim();
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
            throw new IOException("Could not remove adapter staging: " + file);
        }
    }
}
