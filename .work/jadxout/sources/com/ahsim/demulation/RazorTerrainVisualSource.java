package com.ahsim.demulation;

import com.ahsim.demulation.DuneHackR82ScenarioRecordDecoder;
import com.ahsim.demulation.DuneHackR82cRazorMissionBundle;
import com.ahsim.demulation.RazorCompactMapPlacement;
import com.ahsim.demulation.RazorVramPatternLoader;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.Objects;

/* loaded from: classes2.dex */
public final class RazorTerrainVisualSource {
    public static final int DESCRIPTOR_BYTES = 11520;
    public static final int DESCRIPTOR_COUNT = 360;
    private static final int DESCRIPTOR_OFFSET = 306672;
    private static final String DESCRIPTOR_SHA = "fa2fad90a1ed6bdd9df78a89762d5cce3d2245d2d32c2844d61b23778bfee8aa";
    public static final int PALETTE_BYTES = 512;
    private static final int PALETTE_OFFSET = 155458;
    private static final String PALETTE_SHA = "0cd11f454916abf69d052de77f0becd0df9177690783067009041c90b6b7210a";
    public static final int PALETTE_VARIANTS = 4;

    public static final class Audit {
        public final boolean artworkReady;
        public final boolean baseVramPatternsVerified;
        private final DuneHackR82cRazorMissionBundle.Result bundle;
        public final int compactPending;
        public final boolean compactPreviewVerified;
        public final boolean compactTerrainReady;
        public final int compiledMetatileCount;
        public final boolean compiledMetatilesVerified;
        public final int compiledPatternCount;
        private final RazorVramPatternLoader.Result compiledVram;
        public final int descriptorCandidates;
        public final String descriptorSha256;
        private final byte[] descriptors;
        public final int directMaps;
        public final int expandedGrids;
        public final boolean gameplayReady;
        public final int missions;
        private final byte[] palette;
        public final String paletteSha256;
        public final int paletteVariants;
        private final RazorCompactMapPlacement.Evidence placementEvidence;

        private Audit(byte[] palettes, byte[] desc, DuneHackR82cRazorMissionBundle.Result verified, RazorVramPatternLoader.Result vram, RazorCompactMapPlacement.Evidence compactEvidence) throws IOException {
            this.paletteVariants = 4;
            this.descriptorCandidates = RazorTerrainVisualSource.DESCRIPTOR_COUNT;
            boolean z = false;
            this.artworkReady = false;
            this.baseVramPatternsVerified = true;
            this.compiledMetatilesVerified = true;
            this.compiledPatternCount = RazorVramPatternLoader.PATTERN_COUNT;
            this.compiledMetatileCount = 512;
            this.compactTerrainReady = false;
            this.gameplayReady = false;
            this.compiledVram = vram;
            this.placementEvidence = compactEvidence;
            if (compactEvidence.romVariant == 1 && compactEvidence.compactBoundsVerified) {
                z = true;
            }
            this.compactPreviewVerified = z;
            this.palette = (byte[]) palettes.clone();
            this.descriptors = (byte[]) desc.clone();
            this.bundle = verified;
            this.paletteSha256 = RazorTerrainVisualSource.sha256(this.palette);
            this.descriptorSha256 = RazorTerrainVisualSource.sha256(this.descriptors);
            int d = 0;
            int c = 0;
            int e = 0;
            for (DuneHackR82cRazorMissionBundle.Mission m : this.bundle.allMissions()) {
                if (m.storedMapSide == 32) {
                    c++;
                } else {
                    d++;
                }
                if (m.storedMapSide == 128) {
                    e++;
                }
            }
            this.missions = this.bundle.missionsDecoded;
            this.directMaps = d;
            this.compactPending = c;
            this.expandedGrids = e;
        }

        public int paletteWord(int variant, int line, int index) {
            if (variant < 0 || variant >= 4 || line < 0 || line >= 4 || index < 0 || index >= 16) {
                throw new IllegalArgumentException("Invalid Razor palette index");
            }
            int p = (variant * 128) + (line * 32) + (index * 2);
            return RazorTerrainVisualSource.u16(this.palette, p);
        }

        public byte[] paletteCopy() {
            return (byte[]) this.palette.clone();
        }

        public byte[] visualDescriptorCandidateCopy() {
            return (byte[]) this.descriptors.clone();
        }

        public boolean originalMapRemapEnabled() {
            return this.placementEvidence.specialMapTileRemap;
        }

        DuneHackR82cRazorMissionBundle.Result verifiedCampaignBundle559() {
            return this.bundle;
        }

        public int romVariant() {
            return this.bundle.variant;
        }

        public String romSourceSha256() {
            return this.bundle.sourceSha256;
        }

        public DuneHackR82ScenarioRecordDecoder.Document initialObjectScenario(int house, int mission) throws IOException {
            try {
                return DuneHackR82ScenarioRecordDecoder.decode(this.bundle.mission(house, mission).scenarioBytes());
            } catch (IllegalArgumentException | IllegalStateException ex) {
                throw new IOException("Razor object mission is unverified", ex);
            }
        }

        DuneHackR82cRazorMissionBundle.Mission bootProbeMission(int house, int mission) throws IOException {
            try {
                return this.bundle.mission(house, mission);
            } catch (IllegalArgumentException | IllegalStateException ex) {
                throw new IOException("Razor boot source mission not authenticated", ex);
            }
        }

        public RazorTerrainRuntimeSnapshot runtimeTerrainSnapshot(int house, int mission) throws IOException {
            return RazorTerrainRuntimeSnapshot.capture(this, house, mission);
        }

        public RazorTerrainCellReadPath runtimeTerrainReadPath(int house, int mission) throws IOException {
            return RazorTerrainCellReadPath.capture(runtimeTerrainSnapshot(house, mission));
        }

        public RazorTerrainRendererInput offlineRendererInput(int house, int mission) throws IOException {
            return RazorTerrainRendererInput.capture(this, house, mission);
        }

        public String compiledVramSha256() {
            return this.compiledVram.patternSha256;
        }

        public String compiledMetatileSha256() {
            return this.compiledVram.metatileSha256;
        }

        public int[] decodeOriginalMetatile(int paletteVariant, int metatileId) throws IOException {
            return this.compiledVram.decodeMetatile(this.palette, paletteVariant, metatileId);
        }

        public int compiledMetatileAttribute(int metatile, int x, int y) {
            return this.compiledVram.metatileAttribute(metatile, x, y);
        }

        public static final class MapInfo {
            public final boolean centeredCompact;
            public final int loadedHeight;
            public final int loadedStartX;
            public final int loadedStartY;
            public final int loadedWidth;
            public final boolean requiresGenerator;
            public final int scenarioHeight;
            public final int scenarioWidth;
            public final int storedSide;

            private MapInfo(DuneHackR82cRazorMissionBundle.Mission m) {
                this.storedSide = m.storedMapSide;
                this.scenarioWidth = m.scenarioMapWidth;
                this.scenarioHeight = m.scenarioMapHeight;
                this.requiresGenerator = false;
                this.centeredCompact = this.storedSide == 32;
                this.loadedStartX = this.centeredCompact ? 16 : 0;
                this.loadedStartY = this.centeredCompact ? 16 : 0;
                this.loadedWidth = this.centeredCompact ? 32 : this.storedSide;
                this.loadedHeight = this.centeredCompact ? 32 : this.storedSide;
            }
        }

        public MapInfo mapInfo(int house, int mission) throws IOException {
            try {
                return new MapInfo(this.bundle.mission(house, mission));
            } catch (IllegalArgumentException | IllegalStateException ex) {
                throw new IOException("Razor mission map is not verified/available", ex);
            }
        }

        public byte[] directMapCopy(int house, int mission) throws IOException {
            try {
                DuneHackR82cRazorMissionBundle.Mission m = this.bundle.mission(house, mission);
                if (m.storedMapSide != 64 && m.storedMapSide != 128) {
                    throw new IOException("Razor compact 32x32 source requires ROM generator");
                }
                return m.mapBytes();
            } catch (IllegalArgumentException | IllegalStateException ex) {
                throw new IOException("Razor mission map is not verified/available", ex);
            }
        }

        public byte[] compactSourceCopy(int house, int mission) throws IOException {
            try {
                DuneHackR82cRazorMissionBundle.Mission m = this.bundle.mission(house, mission);
                if (m.storedMapSide != 32 || this.bundle.variant != 1) {
                    throw new IOException("Requested mission has no attested compact source");
                }
                return m.mapBytes();
            } catch (IllegalArgumentException | IllegalStateException ex) {
                throw new IOException("Razor compact scenario unavailable", ex);
            }
        }

        public RazorCompactMapPlacement.Placement compactPlacement(int house, int mission) throws IOException {
            return RazorCompactMapPlacement.place(compactSourceCopy(house, mission), this.placementEvidence);
        }

        public int loadedTerrainMetatile(int house, int mission, int x, int y) throws IOException {
            int raw;
            MapInfo info = mapInfo(house, mission);
            if (x < 0 || y < 0 || x >= info.scenarioWidth || y >= info.scenarioHeight) {
                return -1;
            }
            if (info.centeredCompact) {
                raw = compactPlacement(house, mission).rawTile(x, y);
            } else {
                int raw2 = info.storedSide;
                if (x >= raw2 || y >= info.storedSide) {
                    return -1;
                }
                byte[] data = directMapCopy(house, mission);
                raw = data[(info.storedSide * y) + x] & 255;
            }
            if (raw < 0) {
                return -1;
            }
            return RazorCompactMapPlacement.loadedTile(raw, this.placementEvidence.specialMapTileRemap);
        }

        public int rawTile(int house, int mission, int x, int y) {
            DuneHackR82cRazorMissionBundle.Mission m = this.bundle.mission(house, mission);
            if (x < 0 || y < 0 || x >= m.scenarioMapWidth || y >= m.scenarioMapHeight || m.storedMapSide == 32) {
                return -1;
            }
            byte[] bytes = m.mapBytes();
            return bytes[(m.storedMapSide * y) + x] & 255;
        }

        @Deprecated
        public boolean needsMapGeneration(int house, int mission) {
            return this.bundle.mission(house, mission).storedMapSide == 32;
        }
    }

    private RazorTerrainVisualSource() {
    }

    public static Audit inspect(byte[] rom, String expectedSha256, DuneHackR82cRazorMissionBundle.Result bundle) throws IOException {
        if (rom != null && bundle != null && expectedSha256 != null) {
            if (expectedSha256.equalsIgnoreCase(bundle.sourceSha256)) {
                Objects.requireNonNull(bundle);
                Objects.requireNonNull(bundle);
                if (bundle.missionsDecoded >= 44) {
                    if (!sha256(rom).equals(bundle.sourceSha256)) {
                        throw new IOException("Razor visual ROM changed after bundle verification");
                    }
                    if (DESCRIPTOR_OFFSET > rom.length - 11520 || 155458 > rom.length - 512) {
                        throw new IOException("Razor visual source truncated");
                    }
                    byte[] palette = Arrays.copyOfRange(rom, 155458, 155970);
                    byte[] descriptors = Arrays.copyOfRange(rom, DESCRIPTOR_OFFSET, 318192);
                    if (!PALETTE_SHA.equals(sha256(palette)) || !DESCRIPTOR_SHA.equals(sha256(descriptors))) {
                        throw new IOException("Razor visual palette/descriptor bank unverified");
                    }
                    for (int p = 0; p < palette.length; p += 2) {
                        if ((u16(palette, p) & 61713) != 0) {
                            throw new IOException("Razor CRAM entry invalid");
                        }
                    }
                    RazorVramPatternLoader.Result vram = RazorVramPatternLoader.inspect(rom, bundle.sourceSha256);
                    RazorCompactMapPlacement.Evidence placement = RazorCompactMapPlacement.verifyRom(rom, bundle);
                    return new Audit(palette, descriptors, bundle, vram, placement);
                }
            }
        }
        throw new IOException("Razor terrain source requires authenticated mission bundle");
    }

    static int[] decodeVerifiedTile(byte[] vramPatterns, byte[] descriptorBank, byte[] cram, int variant, int tileId) throws IOException {
        byte[] bArr = vramPatterns;
        byte[] bArr2 = descriptorBank;
        byte[] bArr3 = cram;
        int i = variant;
        if (bArr != null && bArr2 != null && bArr3 != null && (bArr.length & 31) == 0 && bArr.length != 0 && bArr2.length % 32 == 0 && bArr3.length == 512 && i >= 0) {
            int i2 = 4;
            if (i < 4 && tileId >= 0 && tileId < bArr2.length / 32) {
                int[] out = new int[RazorTerrainAtlas.HEIGHT];
                int by = 0;
                while (by < i2) {
                    int bx = 0;
                    while (bx < i2) {
                        int attr = u16(bArr2, (tileId * 32) + (((by * 4) + bx) * 2));
                        int pattern = attr & 2047;
                        int line = (attr >>> 13) & 3;
                        if (pattern >= bArr.length / 32) {
                            throw new IOException("Razor pattern index not loaded in verified VRAM bank");
                        }
                        int y = 0;
                        while (true) {
                            int i3 = 8;
                            if (y < 8) {
                                int x = 0;
                                while (x < i3) {
                                    int sx = (attr & GenesisObjectArt.VRAM_PATTERN_COUNT) != 0 ? 7 - x : x;
                                    int sy = (attr & DuneHackR82ScenarioRecordDecoder.MAX_RECORDS) != 0 ? 7 - y : y;
                                    int i4 = i3;
                                    int word = bArr[(pattern * 32) + (sy * 4) + (sx >>> 1)] & 255;
                                    int index = (sx & 1) == 0 ? word >>> 4 : word & 15;
                                    int colour = u16(bArr3, (i * 128) + (line * 32) + (index * 2));
                                    int g = (colour >>> 5) & 7;
                                    int b = (colour >>> 9) & 7;
                                    int i5 = ((((((colour >>> 1) & 7) * 255) + 3) / 7) << 16) | (-16777216);
                                    int r = g * 255;
                                    out[(((by * 8) + y) * 32) + (bx * 8) + x] = (((r + 3) / 7) << 8) | i5 | (((b * 255) + 3) / 7);
                                    x++;
                                    bArr = vramPatterns;
                                    bArr3 = cram;
                                    i = variant;
                                    i3 = i4;
                                }
                                y++;
                                bArr = vramPatterns;
                                bArr3 = cram;
                                i = variant;
                            }
                        }
                        bx++;
                        bArr = vramPatterns;
                        bArr2 = descriptorBank;
                        bArr3 = cram;
                        i = variant;
                        i2 = 4;
                    }
                    by++;
                    bArr = vramPatterns;
                    bArr2 = descriptorBank;
                    bArr3 = cram;
                    i = variant;
                    i2 = 4;
                }
                return out;
            }
        }
        throw new IOException("Razor decoded tile input invalid");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int u16(byte[] b, int p) {
        return ((b[p] & 255) << 8) | (b[p + 1] & 255);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String sha256(byte[] b) throws IOException {
        try {
            byte[] hash = MessageDigest.getInstance("SHA-256").digest(b);
            StringBuilder sb = new StringBuilder(64);
            for (byte x : hash) {
                sb.append(Character.forDigit((x >>> 4) & 15, 16));
                sb.append(Character.forDigit(x & 15, 16));
            }
            return sb.toString();
        } catch (NoSuchAlgorithmException ex) {
            throw new IOException("SHA-256 unavailable", ex);
        }
    }
}
