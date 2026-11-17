package com.ahsim.demulation;

import com.ahsim.demulation.RazorSpritePalettePoseAudit;
import java.io.IOException;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public final class RazorSpriteOrientationDispatchAudit {
    public static final int HEADINGS = 8;
    private static final int[] ROUND_TRACES = {0, 32406, 32708};
    private static final int[] TABLE_TRACES = {0, 59566, 59882};
    private static final byte[] ROUND_OPCODE = {6, 64, 0, 16, 2, 64, 0, -1, -22, 64, -21, 72, 54, 0};
    private static final byte[] TABLE_OPCODE = {6, 64, 0, 16, 2, 64, 0, -1, -22, 64, 54, 0, 52, 4, 48, 3, -48, 64, -44, 123};

    public static final class Result {
        public final boolean eightDirectionQuantizationWitnessed;
        public final int indexedHeadingCodeOffset;
        public final int missionsChecked;
        public final boolean originalHFlipDispatchVerified;
        public final boolean originalLiveSpritePaletteVerified;
        public final boolean originalPoseSelectionVerified;
        public final boolean originalUnitToSpriteCfgDispatchVerified;
        public final boolean originalVFlipDispatchVerified;
        public final int raiderTrikesFound;
        public final boolean readyForGameplaySpriteRendering;
        public final int roundedHeadingCodeOffset;
        public final boolean spritePointerGroupAttested;
        public final int trikesFound;
        public final int variant;
        private final Map<Integer, Integer> witnessedRaiderBuckets;
        private final Map<Integer, Integer> witnessedTrikeBuckets;

        private Result(int edition, RazorSpritePalettePoseAudit.Result previous, Map<Integer, Integer> trike, Map<Integer, Integer> raider) {
            this.eightDirectionQuantizationWitnessed = true;
            this.spritePointerGroupAttested = true;
            this.originalUnitToSpriteCfgDispatchVerified = false;
            this.originalPoseSelectionVerified = false;
            this.originalHFlipDispatchVerified = false;
            this.originalVFlipDispatchVerified = false;
            this.originalLiveSpritePaletteVerified = false;
            this.readyForGameplaySpriteRendering = false;
            this.variant = edition;
            this.roundedHeadingCodeOffset = RazorSpriteOrientationDispatchAudit.ROUND_TRACES[edition];
            this.indexedHeadingCodeOffset = RazorSpriteOrientationDispatchAudit.TABLE_TRACES[edition];
            this.missionsChecked = previous.checkedMissions;
            this.trikesFound = previous.trikes.count;
            this.raiderTrikesFound = previous.raiders.count;
            this.witnessedTrikeBuckets = Collections.unmodifiableMap(new LinkedHashMap(trike));
            this.witnessedRaiderBuckets = Collections.unmodifiableMap(new LinkedHashMap(raider));
        }

        public Map<Integer, Integer> trikeHeadingBuckets() {
            return this.witnessedTrikeBuckets;
        }

        public Map<Integer, Integer> raiderHeadingBuckets() {
            return this.witnessedRaiderBuckets;
        }

        public int gameplaySpritePose(int unitType, int rawFacing) throws IOException {
            throw new IOException("Razor 68000 unit-to-CFG/pose/flip dispatch not authenticated");
        }

        public int gameplayVdpFlipFlags(int unitType, int rawFacing) throws IOException {
            throw new IOException("Razor Genesis sprite H/V mirror dispatch not authenticated");
        }
    }

    private RazorSpriteOrientationDispatchAudit() {
    }

    public static int headingBucket(int headingByte) {
        if (headingByte < 0 || headingByte > 255) {
            throw new IllegalArgumentException("Raw heading is not a byte");
        }
        return (255 & (headingByte + 16)) >>> 5;
    }

    public static Result inspect(byte[] rom, String expectedSha256) throws IOException {
        RazorSpritePalettePoseAudit.Result prior = RazorSpritePalettePoseAudit.inspect(rom, expectedSha256);
        int edition = prior.romVariant;
        if (edition != 1 && edition != 2) {
            throw new IOException("Unauthenticated Razor revision");
        }
        requireSequence(rom, ROUND_TRACES[edition], ROUND_OPCODE, "heading-rounding");
        requireSequence(rom, TABLE_TRACES[edition], TABLE_OPCODE, "heading-table-index");
        for (int i = 0; i < 8; i++) {
            if (headingBucket(i * 32) != i) {
                throw new IOException("68000 eight-heading arithmetic mismatch");
            }
        }
        if (headingBucket(240) != 0 || headingBucket(16) != 1 || headingBucket(15) != 0) {
            throw new IOException("68000 heading wrap/boundary mismatch");
        }
        return new Result(edition, prior, bucketHistogram(prior.trikes.rawFacingCounts()), bucketHistogram(prior.raiders.rawFacingCounts()));
    }

    private static void requireSequence(byte[] rom, int offset, byte[] bytes, String description) throws IOException {
        if (rom == null || offset < 0 || offset > rom.length - bytes.length) {
            throw new IOException("Razor 68000 " + description + " out of ROM bounds");
        }
        for (int i = 0; i < bytes.length; i++) {
            if (rom[offset + i] != bytes[i]) {
                throw new IOException("Razor 68000 " + description + " opcode diverged at ROM+0x" + Integer.toHexString(offset + i));
            }
        }
    }

    private static Map<Integer, Integer> bucketHistogram(Map<Integer, Integer> raw) throws IOException {
        LinkedHashMap<Integer, Integer> result = new LinkedHashMap<>();
        for (int i = 0; i < 8; i++) {
            result.put(Integer.valueOf(i), 0);
        }
        for (Map.Entry<Integer, Integer> e : raw.entrySet()) {
            if (e.getKey().intValue() < 0 || e.getKey().intValue() > 255 || e.getValue().intValue() <= 0) {
                throw new IOException("Unexpected initial Razor unit heading record");
            }
            int bucket = headingBucket(e.getKey().intValue());
            result.put(Integer.valueOf(bucket), Integer.valueOf(result.get(Integer.valueOf(bucket)).intValue() + e.getValue().intValue()));
        }
        return result;
    }
}
