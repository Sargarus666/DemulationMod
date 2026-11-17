package com.ahsim.demulation;

import com.ahsim.demulation.DuneHackR82ScenarioRecordDecoder;
import com.ahsim.demulation.DuneHackR82cRazorMissionBundle;
import com.ahsim.demulation.RazorSpriteCfgRelocation;
import com.ahsim.demulation.RazorTerrainVisualSource;
import java.io.IOException;
import java.lang.reflect.Array;
import java.util.Collections;
import java.util.Map;
import java.util.SortedMap;
import java.util.TreeMap;

/* loaded from: classes2.dex */
public final class RazorSpritePalettePoseAudit {
    public static final int CRAM_LINES = 4;
    public static final int CRAM_SOURCE_OFFSET = 155458;
    private static final int INDEX_COUNT = 16;
    public static final int RAIDER_TYPE = 14;
    public static final int SETS = 4;
    public static final int TRIKE_TYPE = 13;

    public static final class ObjectSample {
        public final int count;
        private final Map<Integer, Integer> rawFacings;
        public final int sourceType;

        private ObjectSample(int id, int n, TreeMap<Integer, Integer> facing) {
            this.sourceType = id;
            this.count = n;
            this.rawFacings = Collections.unmodifiableMap(new TreeMap((SortedMap) facing));
        }

        public Map<Integer, Integer> rawFacingCounts() {
            return this.rawFacings;
        }
    }

    public static final class Result {
        public final int checkedMissions;
        public final boolean facingToPoseDispatchVerified;
        public final boolean gameplayReady;
        public final boolean liveCramUploadVerified;
        public final boolean objectToCfgDispatchVerified;
        public final String paletteSourceSha256;
        private final byte[][] poseIndices;
        public final ObjectSample raiders;
        public final int romVariant;
        private final int[][] sourceCram;
        public final boolean sourcePaletteCandidateFound;
        public final String sourceSha256;
        public final boolean sourceType13NamedTrike;
        public final boolean spriteCfgPaletteBitsVerified;
        public final boolean transparentColorRuleVerified;
        public final ObjectSample trikes;

        private Result(int variant, String romHash, String cramHash, int missions, ObjectSample t, ObjectSample r, int[][] sourceCrams, byte[][] poses) {
            this.sourceType13NamedTrike = true;
            this.sourcePaletteCandidateFound = true;
            this.spriteCfgPaletteBitsVerified = true;
            this.liveCramUploadVerified = false;
            this.objectToCfgDispatchVerified = false;
            this.facingToPoseDispatchVerified = false;
            this.transparentColorRuleVerified = false;
            this.gameplayReady = false;
            this.romVariant = variant;
            this.sourceSha256 = romHash;
            this.paletteSourceSha256 = cramHash;
            this.checkedMissions = missions;
            this.trikes = t;
            this.raiders = r;
            this.sourceCram = sourceCrams;
            this.poseIndices = poses;
        }

        public int sourceCramWord(int set, int line, int color) {
            if (set < 0 || set >= 4 || line < 0 || line >= 4 || color < 0 || color >= 16) {
                throw new IllegalArgumentException("Razor CRAM index out of bounds");
            }
            return this.sourceCram[set][(line * 16) + color];
        }

        public byte[] verifiedPoseIndices(int pose) {
            if (pose < 0 || pose >= 5) {
                throw new IllegalArgumentException("Razor pose outside 0..4");
            }
            return (byte[]) this.poseIndices[pose].clone();
        }

        public int[] candidateArgb(int set, int pose) {
            if (set < 0 || set >= 4 || pose < 0 || pose >= 5) {
                throw new IllegalArgumentException("Razor CRAM/pose out of bounds");
            }
            int[] pixels = new int[256];
            for (int i = 0; i < pixels.length; i++) {
                int index = this.poseIndices[pose][i] & 15;
                int w = sourceCramWord(set, 0, index);
                int r = (w >>> 1) & 7;
                int g = (w >>> 5) & 7;
                int b = (w >>> 9) & 7;
                pixels[i] = ((((r * 255) + 3) / 7) << 16) | (-16777216) | ((((g * 255) + 3) / 7) << 8) | (((b * 255) + 3) / 7);
            }
            return pixels;
        }

        public int runtimePoseFor(int sourceType, int rawFacing) throws IOException {
            throw new IOException("Razor runtime object/pose dispatch not yet authenticated");
        }
    }

    private RazorSpritePalettePoseAudit() {
    }

    public static Result inspect(byte[] rom, String sha256) throws IOException {
        TreeMap<Integer, Integer> counts;
        boolean z;
        int intValue;
        RazorSpriteCfgRelocation.Result cfg = RazorSpriteCfgRelocation.inspect(rom, sha256);
        DuneHackR82cRazorMissionBundle.Result bundle = DuneHackR82cRazorMissionBundle.inspect(rom, sha256);
        RazorTerrainVisualSource.Audit palette = RazorTerrainVisualSource.inspect(rom, sha256, bundle);
        if (cfg.variant == bundle.variant && cfg.variant == palette.romVariant()) {
            if ("Trike".equals(DuneHackR82ScenarioIdentityAudit.unitTypeName(13)) && "Raider Trike".equals(DuneHackR82ScenarioIdentityAudit.unitTypeName(14))) {
                int i = 2;
                boolean z2 = true;
                int[][] words = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, 4, 64);
                for (int set = 0; set < 4; set++) {
                    for (int line = 0; line < 4; line++) {
                        for (int color = 0; color < 16; color++) {
                            words[set][(line * 16) + color] = palette.paletteWord(set, line, color);
                        }
                    }
                }
                byte[][] poses = new byte[5][];
                int pose = 0;
                for (int set2 = 5; pose < set2; set2 = 5) {
                    int group = 0;
                    while (group < i) {
                        RazorSpriteCfgRelocation.Frame frame = cfg.frame(group, pose);
                        if ((frame.vramTile & 63488) == 0 && frame.vramTile == (pose * 4) + RazorSpriteCfgRelocation.TILE_BASE) {
                            group++;
                            i = 2;
                        } else {
                            throw new IOException("Razor verified sprite attributes unexpectedly changed");
                        }
                    }
                    poses[pose] = cfg.frame(0, pose).pixelsCopy();
                    pose++;
                    i = 2;
                }
                TreeMap<Integer, Integer> tFacing = new TreeMap<>();
                TreeMap<Integer, Integer> rFacing = new TreeMap<>();
                int trikes = 0;
                int raiders = 0;
                for (DuneHackR82cRazorMissionBundle.Mission m : bundle.allMissions()) {
                    DuneHackR82ScenarioRecordDecoder.Document doc = DuneHackR82ScenarioRecordDecoder.decode(m.scenarioBytes());
                    for (DuneHackR82ScenarioRecordDecoder.Record rec : doc.records()) {
                        if (rec.section == 8) {
                            int type = rec.value(1);
                            int facing = rec.value(4);
                            if (type == 13) {
                                trikes++;
                                counts = tFacing;
                            } else if (type == 14) {
                                raiders++;
                                counts = rFacing;
                            }
                            Integer prev = counts.get(Integer.valueOf(facing));
                            Integer prev2 = Integer.valueOf(facing);
                            if (prev == null) {
                                z = true;
                                intValue = 1;
                            } else {
                                z = true;
                                intValue = prev.intValue() + 1;
                            }
                            counts.put(prev2, Integer.valueOf(intValue));
                            z2 = z;
                        }
                        z2 = true;
                    }
                }
                int trikes2 = cfg.variant;
                return new Result(trikes2, sha256, palette.paletteSha256, bundle.missionsDecoded, new ObjectSample(13, trikes, tFacing), new ObjectSample(14, raiders, rFacing), words, poses);
            }
        }
        throw new IOException("Razor sprite identity conflicts with ROM source");
    }
}
