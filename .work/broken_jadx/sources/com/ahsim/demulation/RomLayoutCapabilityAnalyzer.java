package com.ahsim.demulation;

import com.ahsim.demulation.DuneHackR82Probe;
import com.ahsim.demulation.RomImageNormalizer;
import com.ahsim.demulation.RomSelectionStore;
import com.ahsim.demulation.RomSourceAccessPolicy;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Collections;
import java.util.EnumMap;
import java.util.Locale;
import java.util.Map;

/* loaded from: classes2.dex */
public final class RomLayoutCapabilityAnalyzer {
    private static final String SHA_R79_REVOLUTION_ANG_VOICE = "babff0733d860b38922408b73589537c0903effe6c628aa0a93479d60b15d440";
    private static final String SHA_R79_REVOLUTION_RUS_VOICE = "6a0f21a71476c4e9153198c75886a3c6d38cdd55555b90a619539d79cfec34b1";
    private static final String SHA_R80B_LABYRINTH = "b91d68b134effbb0aadea0ab7f00c184be8da555c79280990b2b2390f035892a";
    private static final String SHA_R81B_CONSUL_WAR_2 = "eb24c14ad5e7b0545f15fd0af5391ff9a5a80691810248ce260faa086faf75a5";
    private static final String SHA_R81B_MISSION_DEMOLITION = "6d2fac8af27e3ba75b70db047245cd4bca9fc9ce80cf2a3d7194dd2ac2d3a93f";
    private static final String SHA_R81C_RAZOR_MISSIONS = "b563d95cb3db589476fa44a29027a9d46e48cbd8369c5b65ccec0e627a14e578";
    private static final String SHA_REFERENCE_USA = "b1bbe73186e0902fa8b2db0f227bf306e3d6a80fe592f927d1aa9d60c0f335ba";
    private static final String SHA_RU_SHEDEVR_LIPETSK = "4d93c48957cc81fc49a6edff6353787e5d32eb5e2c86963182fba918a45e906a";

    public enum CapabilityState {
        READY_NOW,
        PARTIAL,
        ADAPTER_REQUIRED,
        CANDIDATE,
        UNAVAILABLE
    }

    public enum ContentGroup {
        FRONTEND_GRAPHICS_MIXED,
        MENTAT_GRAPHICS_MIXED,
        MISSION_PRESENTATION_GRAPHICS_MIXED,
        TUTORIAL_GRAPHICS_MIXED,
        RESULT_GRAPHICS_MIXED,
        ENDING_GRAPHICS_MIXED,
        WORLD_TERRAIN_RADAR,
        TACTICAL_SPRITES,
        AUDIO_MUSIC_SFX,
        LOCALIZATION_TEXT,
        LOCALIZATION_GLYPHS
    }

    public enum LayoutFamily {
        ORIGINAL_USA,
        ORIGINAL_LAYOUT_PATCHED,
        DUNEHACK_R79,
        DUNEHACK_R80B,
        DUNEHACK_R81B,
        DUNEHACK_R81C,
        DUNEHACK_R82B,
        DUNEHACK_R82C,
        DUNEHACK_R82C_PLUS,
        DUNEHACK_UNKNOWN,
        UNKNOWN
    }

    public static final class Capability {
        public final String evidence;
        public final CapabilityState state;

        private Capability(CapabilityState state, String evidence) {
            this.state = state;
            this.evidence = evidence == null ? "" : evidence;
        }
    }

    public static final class Result {
        public final Map<ContentGroup, Capability> capabilities;
        public final RomImageNormalizer.ContainerFormat containerFormat;
        public final String domesticTitle;
        public final boolean exactAuditedProfile;
        public final boolean hasGenesisHeader;
        public final LayoutFamily layoutFamily;
        public final String normalizedSha256;
        public final long normalizedSize;
        public final String overseasTitle;
        public final String profileId;
        public final String profileLabel;
        public final DuneHackR82Probe.Result r82Probe;
        public final String rawSha256;
        public final long rawSize;
        public final String rebuildTag;
        public final String serial;

        private Result(long rawSize, long normalizedSize, String rawSha256, String normalizedSha256, RomImageNormalizer.ContainerFormat containerFormat, boolean hasGenesisHeader, String domesticTitle, String overseasTitle, String serial, String rebuildTag, LayoutFamily layoutFamily, String profileId, String profileLabel, boolean exactAuditedProfile, DuneHackR82Probe.Result r82Probe, EnumMap<ContentGroup, Capability> capabilities) {
            this.rawSize = rawSize;
            this.normalizedSize = normalizedSize;
            this.rawSha256 = rawSha256;
            this.normalizedSha256 = normalizedSha256;
            this.containerFormat = containerFormat;
            this.hasGenesisHeader = hasGenesisHeader;
            this.domesticTitle = domesticTitle;
            this.overseasTitle = overseasTitle;
            this.serial = serial;
            this.rebuildTag = rebuildTag;
            this.layoutFamily = layoutFamily;
            this.profileId = profileId;
            this.profileLabel = profileLabel;
            this.exactAuditedProfile = exactAuditedProfile;
            this.r82Probe = r82Probe;
            this.capabilities = Collections.unmodifiableMap(capabilities);
        }

        public Capability capability(ContentGroup group) {
            Capability value = this.capabilities.get(group);
            return value == null ? new Capability(CapabilityState.UNAVAILABLE, "not classified") : value;
        }

        public boolean roleMayUseGroup(RomSelectionStore.SourceRole role, ContentGroup group) {
            if (role == null || group == null) {
                return false;
            }
            switch (group) {
                case WORLD_TERRAIN_RADAR:
                case TACTICAL_SPRITES:
                    return RomSourceAccessPolicy.allows(role, RomSourceAccessPolicy.Capability.MEDIA_GRAPHICS_NEUTRAL);
                case AUDIO_MUSIC_SFX:
                    return RomSourceAccessPolicy.allows(role, RomSourceAccessPolicy.Capability.MEDIA_AUDIO);
                case LOCALIZATION_TEXT:
                    return RomSourceAccessPolicy.allows(role, RomSourceAccessPolicy.Capability.LOCALIZATION_TEXT);
                case LOCALIZATION_GLYPHS:
                    return RomSourceAccessPolicy.allows(role, RomSourceAccessPolicy.Capability.LOCALIZATION_GLYPHS);
                default:
                    return false;
            }
        }
    }

    private RomLayoutCapabilityAnalyzer() {
    }

    public static Result analyze(InputStream input, long knownSize) throws IOException {
        if (input == null) {
            throw new IOException("ROM stream is unavailable");
        }
        byte[] raw = readRawForHash(input, knownSize);
        String rawSha = sha256(raw);
        RomImageNormalizer.NormalizedImage normalized = RomImageNormalizer.normalize(raw);
        byte[] rom = normalized.bytes;
        String logicalSha = sha256(rom);
        boolean sega = RomImageNormalizer.hasGenesisHeader(rom);
        String domestic = sega ? ascii(rom, 288, 336) : "";
        String overseas = sega ? ascii(rom, 336, 384) : "";
        String serial = sega ? ascii(rom, 384, 398) : "";
        String rebuildTag = rom.length >= 576 ? asciiLoose(rom, 544, 576) : "";
        DuneHackR82Probe.Result r82Probe = DuneHackR82Probe.inspect(rom, rom.length, logicalSha);
        ProfileDecision decision = decideProfile(logicalSha, sega, domestic, overseas, serial, rebuildTag, rom.length, r82Probe);
        EnumMap<ContentGroup, Capability> caps = classifyCapabilities(decision);
        return new Result(raw.length, rom.length, rawSha, logicalSha, normalized.containerFormat, sega, domestic, overseas, serial, rebuildTag, decision.family, decision.profileId, decision.label, decision.exact, r82Probe, caps);
    }

    private static final class ProfileDecision {
        final boolean exact;
        final int exactKind;
        final LayoutFamily family;
        final String label;
        final String profileId;

        ProfileDecision(LayoutFamily family, String profileId, String label, boolean exact, int exactKind) {
            this.family = family;
            this.profileId = profileId;
            this.label = label;
            this.exact = exact;
            this.exactKind = exactKind;
        }
    }

    private static ProfileDecision decideProfile(String sha, boolean sega, String domestic, String overseas, String serial, String tag, int size, DuneHackR82Probe.Result r82) {
        if (!SHA_REFERENCE_USA.equals(sha)) {
            if (!"4d93c48957cc81fc49a6edff6353787e5d32eb5e2c86963182fba918a45e906a".equals(sha)) {
                if (!SHA_R79_REVOLUTION_ANG_VOICE.equals(sha)) {
                    if (!SHA_R79_REVOLUTION_RUS_VOICE.equals(sha)) {
                        if (!SHA_R80B_LABYRINTH.equals(sha)) {
                            if (!SHA_R81B_MISSION_DEMOLITION.equals(sha)) {
                                if (!SHA_R81B_CONSUL_WAR_2.equals(sha)) {
                                    if (SHA_R81C_RAZOR_MISSIONS.equals(sha)) {
                                        return new ProfileDecision(LayoutFamily.DUNEHACK_R81C, "dunehack_r81c_razor_missions", "DuneHack Rebuild R81c / Razor Missions", true, 6);
                                    }
                                    if (r82 != null && r82.recognized()) {
                                        LayoutFamily family = r82.family == DuneHackR82Probe.Family.R82C_PLUS ? LayoutFamily.DUNEHACK_R82C_PLUS : LayoutFamily.DUNEHACK_R82C;
                                        return new ProfileDecision(family, r82.profileId(), r82.profileLabel(), false, 0);
                                    }
                                    String r82bTitles = (domestic + " " + overseas).toUpperCase(Locale.US);
                                    String r82bTag = tag.toUpperCase(Locale.US);
                                    if (sega && r82bTitles.contains("REBUILD R82B") && r82bTag.startsWith(DuneHackR82bRequiteAudit.REQUITE_BUILD_TAG)) {
                                        boolean requiteSample = DuneHackR82bRequiteAudit.REQUITE_SAMPLE_SHA256.equals(sha);
                                        return new ProfileDecision(LayoutFamily.DUNEHACK_R82B, requiteSample ? "candidate:dune_ii_requite_r82b" : "candidate:dunehack_r82b", requiteSample ? "Dune II Requite / Dimidrol / R82B (audit only)" : "DuneHack Rebuild R82B family (audit only)", false, 0);
                                    }
                                    if (!sega) {
                                        return new ProfileDecision(LayoutFamily.UNKNOWN, "unknown:no_sega_header", "Unknown image / no canonical Genesis header", false, 0);
                                    }
                                    String upperTag = tag.toUpperCase(Locale.US);
                                    String titles = (domestic + " " + overseas).toUpperCase(Locale.US);
                                    if (!upperTag.contains("REBUILD_R79") && !titles.contains("REBUILD R79")) {
                                        if (!upperTag.contains("REBUILD_R80") && !titles.contains("REBUILD R80")) {
                                            if (!upperTag.contains("81C") && !titles.contains("REBUILD R81C")) {
                                                if (!upperTag.contains("81B") && !upperTag.contains("REBUILD_81B")) {
                                                    if (!titles.contains("REBUILD R81B")) {
                                                        if (!upperTag.contains("REBUILD") && !titles.contains("DUNEHACK")) {
                                                            if (!titles.contains("REBUILD")) {
                                                                boolean titleMatch = titles.contains(RomCompatibilityProfiles.GAME_TITLE);
                                                                boolean serialMatch = serial.toUpperCase(Locale.US).startsWith(RomCompatibilityProfiles.SERIAL_PREFIX);
                                                                if (titleMatch && serialMatch) {
                                                                    if (size >= 1048576) {
                                                                        return new ProfileDecision(LayoutFamily.ORIGINAL_LAYOUT_PATCHED, "candidate:original_layout_patched", "Original-layout patched/translated candidate", false, 0);
                                                                    }
                                                                }
                                                                return new ProfileDecision(LayoutFamily.UNKNOWN, "unknown", "Unrecognized Genesis ROM layout", false, 0);
                                                            }
                                                        }
                                                        return new ProfileDecision(LayoutFamily.DUNEHACK_UNKNOWN, "candidate:dunehack_unknown", "DuneHack/Rebuild family candidate", false, 0);
                                                    }
                                                }
                                                return new ProfileDecision(LayoutFamily.DUNEHACK_R81B, "candidate:dunehack_r81b", "DuneHack Rebuild R81b family candidate", false, 0);
                                            }
                                            return new ProfileDecision(LayoutFamily.DUNEHACK_R81C, "candidate:dunehack_r81c", "DuneHack Rebuild R81c family candidate", false, 0);
                                        }
                                        return new ProfileDecision(LayoutFamily.DUNEHACK_R80B, "candidate:dunehack_r80b", "DuneHack Rebuild R80 family candidate", false, 0);
                                    }
                                    return new ProfileDecision(LayoutFamily.DUNEHACK_R79, "candidate:dunehack_r79", "DuneHack Rebuild R79 family candidate", false, 0);
                                }
                                return new ProfileDecision(LayoutFamily.DUNEHACK_R81B, "dunehack_r81b_consul_war_2", "DuneHack Rebuild R81b / Consul War 2", true, 5);
                            }
                            return new ProfileDecision(LayoutFamily.DUNEHACK_R81B, "dunehack_r81b_mission_demolition_ru", "DuneHack Rebuild R81b / Mission Demolition [rus]", true, 4);
                        }
                        return new ProfileDecision(LayoutFamily.DUNEHACK_R80B, "dunehack_r80b_labyrinth_35_successor", "DuneHack Rebuild R80b / Labyrinth 3.5 Successor", true, 3);
                    }
                    return new ProfileDecision(LayoutFamily.DUNEHACK_R79, "dunehack_r79_revolution_rus_voice", "Dune Revolution / Rebuild R79 / Russian voice", true, 7);
                }
                return new ProfileDecision(LayoutFamily.DUNEHACK_R79, "dunehack_r79_revolution_ang_voice", "Dune Revolution / Rebuild R79 / English voice", true, 7);
            }
            return new ProfileDecision(LayoutFamily.ORIGINAL_LAYOUT_PATCHED, "translation_ru_shedevr_lipetsk_usa", "Russian translation / Shedevr & Lipetsk / original 1 MiB layout", true, 2);
        }
        return new ProfileDecision(LayoutFamily.ORIGINAL_USA, "dune_arrakis_usa_gm_t70246_00", "USA retail / verified original layout", true, 1);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x016b, code lost:
    
        return r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.util.EnumMap<com.ahsim.demulation.RomLayoutCapabilityAnalyzer.ContentGroup, com.ahsim.demulation.RomLayoutCapabilityAnalyzer.Capability> classifyCapabilities(com.ahsim.demulation.RomLayoutCapabilityAnalyzer.ProfileDecision r10) {
        /*
            Method dump skipped, instructions count: 386
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ahsim.demulation.RomLayoutCapabilityAnalyzer.classifyCapabilities(com.ahsim.demulation.RomLayoutCapabilityAnalyzer$ProfileDecision):java.util.EnumMap");
    }

    private static void set(EnumMap<ContentGroup, Capability> map, ContentGroup group, CapabilityState state, String evidence) {
        map.put((EnumMap<ContentGroup, Capability>) group, (ContentGroup) new Capability(state, evidence));
    }

    private static byte[] readRawForHash(InputStream input, long knownSize) throws IOException {
        ByteArrayOutputStream out = new ByteArrayOutputStream((knownSize <= 0 || knownSize > 16777216) ? 1048576 : (int) knownSize);
        byte[] buffer = new byte[32768];
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

    private static String ascii(byte[] data, int start, int end) {
        StringBuilder out = new StringBuilder(Math.max(0, end - start));
        for (int i = start; i < end && i < data.length; i++) {
            int value = data[i] & 255;
            if (value == 0) {
                break;
            }
            char c = ' ';
            if (value >= 32 && value <= 126) {
                c = (char) value;
            }
            out.append(c);
        }
        return out.toString().trim().replaceAll("\\s+", " ");
    }

    private static String asciiLoose(byte[] data, int start, int end) {
        StringBuilder out = new StringBuilder(Math.max(0, end - start));
        for (int i = start; i < end && i < data.length; i++) {
            int value = data[i] & 255;
            if (value == 0) {
                if (out.length() > 0) {
                    break;
                }
            } else {
                char c = ' ';
                if (value >= 32 && value <= 126) {
                    c = (char) value;
                }
                out.append(c);
            }
        }
        return out.toString().trim().replaceAll("\\s+", " ");
    }

    private static String sha256(byte[] bytes) throws IOException {
        try {
            MessageDigest md = MessageDigest.getInstance("SHA-256");
            byte[] hash = md.digest(bytes);
            char[] chars = new char[hash.length * 2];
            char[] alphabet = "0123456789abcdef".toCharArray();
            for (int i = 0; i < hash.length; i++) {
                int v = hash[i] & 255;
                chars[i * 2] = alphabet[v >>> 4];
                chars[(i * 2) + 1] = alphabet[v & 15];
            }
            return new String(chars);
        } catch (NoSuchAlgorithmException e) {
            throw new IOException("SHA-256 unavailable", e);
        }
    }
}
