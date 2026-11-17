package com.ahsim.demulation;

import java.util.Locale;

/* loaded from: classes2.dex */
public final class DuneHackR82Probe {
    private static final String KNOWN_EDH_ROM_SHA256 = "09bfe4bef56c7642edef7dea47c41274bdcce595fd95fbb85e64af4d3308d0ce";

    public enum Family {
        NONE,
        R82C,
        R82C_PLUS
    }

    public enum FeatureState {
        UNKNOWN
    }

    public static final class Result {
        public final FeatureState alliances;
        public final String buildTag;
        public final FeatureState emcExtensions;
        public final String evidence;
        public final boolean exampleFingerprintMatched;
        public final FeatureState expandedMap;
        public final FeatureState expandedResolution;
        public final Family family;
        public final String headerTitle;
        public final FeatureState newSoundDriver;
        public final FeatureState projectiles;
        public final FeatureState xMod;

        private Result(Family family, String evidence, String title, String tag, boolean known) {
            this.family = family;
            this.evidence = evidence;
            this.headerTitle = title;
            this.buildTag = tag;
            this.exampleFingerprintMatched = known;
            this.expandedMap = FeatureState.UNKNOWN;
            this.expandedResolution = FeatureState.UNKNOWN;
            this.newSoundDriver = FeatureState.UNKNOWN;
            this.xMod = FeatureState.UNKNOWN;
            this.alliances = FeatureState.UNKNOWN;
            this.projectiles = FeatureState.UNKNOWN;
            this.emcExtensions = FeatureState.UNKNOWN;
        }

        public boolean recognized() {
            return this.family != Family.NONE;
        }

        public String profileId() {
            return this.family == Family.R82C_PLUS ? "candidate:dunehack_r82c_plus" : this.family == Family.R82C ? "candidate:dunehack_r82c" : "unknown";
        }

        public String profileLabel() {
            return this.family == Family.R82C_PLUS ? "DuneHack Rebuild R82C+ / Emperor175 family" : this.family == Family.R82C ? "DuneHack Rebuild R82C family" : "Unknown ROM family";
        }
    }

    private DuneHackR82Probe() {
    }

    public static Result inspect(byte[] prefix, long imageSize, String sha256) {
        String evidence;
        if (prefix != null && prefix.length >= 576 && imageSize >= 262144 && prefix[256] == 83 && prefix[257] == 69 && prefix[258] == 71 && prefix[259] == 65) {
            String title = (ascii(prefix, 288, 336) + " " + ascii(prefix, 336, 384)).trim().toUpperCase(Locale.US);
            String tag = asciiLoose(prefix, 544, 576).toUpperCase(Locale.US);
            String normalizedSha = sha256 == null ? "" : sha256.toLowerCase(Locale.US);
            boolean known = KNOWN_EDH_ROM_SHA256.equals(normalizedSha);
            boolean r82Tag = hasToken(tag, "82C") || hasToken(tag, "R82C");
            boolean r82Title = hasToken(title, "R82C") || hasToken(title, "82C");
            boolean duneHackTitle = title.contains("DUNEHACK") || title.contains("DUNE HACK");
            boolean rebuildTitle = title.contains("DUNE") && title.contains("REBUILD R82C");
            boolean assemblerTag = tag.matches("NS[0-9]{2}[A-Z]{3}[0-9]{2}_82C");
            boolean confirmedRebuildPair = rebuildTitle && assemblerTag;
            if (!known && ((!duneHackTitle || (!r82Tag && !r82Title)) && !confirmedRebuildPair)) {
                return new Result(Family.NONE, "no paired R82C title/build evidence", title, tag, false);
            }
            boolean plus = known || title.contains("EMPEROR175") || title.contains("EDH3") || title.contains("EDH4") || title.contains("R82C+") || tag.contains("R82C+");
            Family family = plus ? Family.R82C_PLUS : Family.R82C;
            if (known) {
                evidence = "known example SHA-256; R82C-family ROM, mechanics not audited";
            } else if (confirmedRebuildPair) {
                evidence = "Genesis Dune Rebuild R82C title plus assembler build tag";
            } else {
                evidence = r82Tag ? "DuneHack title plus embedded R82C build tag" : "DuneHack title plus R82C version marker";
            }
            return new Result(family, evidence, title, tag, known);
        }
        return new Result(Family.NONE, "missing Genesis header / too short", "", "", false);
    }

    private static boolean hasToken(String haystack, String token) {
        boolean before;
        int from = 0;
        while (true) {
            int p = haystack.indexOf(token, from);
            boolean after = false;
            if (p < 0) {
                return false;
            }
            int end = token.length() + p;
            if (p != 0 && Character.isLetterOrDigit(haystack.charAt(p - 1))) {
                before = false;
            } else {
                before = true;
            }
            if (end == haystack.length() || !Character.isLetterOrDigit(haystack.charAt(end))) {
                after = true;
            }
            if (before && after) {
                return true;
            }
            from = p + 1;
        }
    }

    private static String ascii(byte[] data, int start, int end) {
        StringBuilder out = new StringBuilder();
        for (int i = start; i < end && i < data.length; i++) {
            int v = data[i] & 255;
            if (v == 0) {
                break;
            }
            char c = ' ';
            if (v >= 32 && v <= 126) {
                c = (char) v;
            }
            out.append(c);
        }
        return out.toString().trim().replaceAll("\\s+", " ");
    }

    private static String asciiLoose(byte[] data, int start, int end) {
        StringBuilder out = new StringBuilder();
        for (int i = start; i < end && i < data.length; i++) {
            int v = data[i] & 255;
            if (v == 0) {
                if (out.length() != 0) {
                    break;
                }
            } else {
                char c = ' ';
                if (v >= 32 && v <= 126) {
                    c = (char) v;
                }
                out.append(c);
            }
        }
        return out.toString().trim().replaceAll("\\s+", " ");
    }
}
