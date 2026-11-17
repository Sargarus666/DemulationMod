package com.ahsim.demulation;

import com.ahsim.demulation.GenesisRomIdentity;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* loaded from: classes2.dex */
public final class RomCompatibilityProfiles {
    public static final String EUROPE_ID = "dune_arrakis_europe_gm_t70246_00";
    private static final List<Profile> EXACT = Collections.unmodifiableList(Arrays.asList(m23p("dune_arrakis_usa_gm_t70246_00", "USA retail / Genesis / GM T-70246 -00", "0f7c1c130cb39abc97f57545933e1ef6c481783d", "b1bbe73186e0902fa8b2db0f227bf306e3d6a80fe592f927d1aa9d60c0f335ba", "4dea40ba", "U", 12675, GenesisRomIdentity.Compatibility.VERIFIED, GenesisRomIdentity.Compatibility.VERIFIED, true, ""), m23p("dune_arrakis_europe_gm_t70246_00", "Europe retail / Mega Drive / GM T-70246 -00", "133cc86b43afe133fc9c9142b448340c17fa668e", "31979d1d9a5d6fe5c9ae95f3cfc1dd6f9f51e9e075268bb8a9f9ca57da847547", "b58ae71d", "E", 24116, GenesisRomIdentity.Compatibility.VERIFIED, GenesisRomIdentity.Compatibility.VERIFIED, true, ""), m23p("dune_arrakis_germany_gm_t70246_00", "Germany retail / Mega Drive / GM T-70246 -00", "55996cd262df518e92271bceee4d2a657cd7e02c", "7f11e502ba2f4b4cdeee82c4e22b5ba64f04433ef1e5de1346db7231c1bd2e30", "39790728", "E", 32162, GenesisRomIdentity.Compatibility.VERIFIED, GenesisRomIdentity.Compatibility.VERIFIED, true, "Audited German retail profile; BASE preparation auto-enables German content and audio."), m23p("translation_ru_shedevr_lipetsk_usa", "Russian translation / Shedevr & Lipetsk / 02.08.2011", "7a7e3ec6aaeb3d8fbcfb779834565412252ce616", "4d93c48957cc81fc49a6edff6353787e5d32eb5e2c86963182fba918a45e906a", "cb9bc1e4", "U", 12675, GenesisRomIdentity.Compatibility.VERIFIED, GenesisRomIdentity.Compatibility.VERIFIED, true, "Audited Russian translation profile; BASE preparation auto-enables Russian text and voice.")));
    public static final String GAME_TITLE = "DUNE - THE BATTLE FOR ARRAKIS";
    public static final String GERMANY_ID = "dune_arrakis_germany_gm_t70246_00";
    public static final String REFERENCE_USA_ID = "dune_arrakis_usa_gm_t70246_00";
    public static final String RUSSIAN_TRANSLATION_ID = "translation_ru_shedevr_lipetsk_usa";
    public static final String SERIAL_PREFIX = "GM T-70246";

    public static final class Profile {
        public final GenesisRomIdentity.Compatibility assetCompatibility;
        public final boolean basePreparationSupported;
        public final String crc32;
        public final String displayLabel;
        public final int headerChecksum;

        /* renamed from: id */
        public final String f63id;
        public final GenesisRomIdentity.Compatibility logicCompatibility;
        public final String preparationNote;
        public final String region;
        public final String serial;
        public final String sha1;
        public final String sha256;
        public final long size;

        Profile(String id, String displayLabel, long size, String sha1, String sha256, String crc32, String serial, String region, int headerChecksum, GenesisRomIdentity.Compatibility logicCompatibility, GenesisRomIdentity.Compatibility assetCompatibility, boolean basePreparationSupported, String preparationNote) {
            this.f63id = id;
            this.displayLabel = displayLabel;
            this.size = size;
            this.sha1 = sha1;
            this.sha256 = sha256;
            this.crc32 = crc32;
            this.serial = serial;
            this.region = region;
            this.headerChecksum = headerChecksum;
            this.logicCompatibility = logicCompatibility;
            this.assetCompatibility = assetCompatibility;
            this.basePreparationSupported = basePreparationSupported;
            this.preparationNote = preparationNote;
        }

        public boolean matches(GenesisRomIdentity.Result r) {
            return r != null && r.size == this.size && this.sha1.equalsIgnoreCase(r.sha1) && this.sha256.equalsIgnoreCase(r.sha256);
        }
    }

    /* renamed from: p */
    private static Profile m23p(String id, String label, String sha1, String sha256, String crc, String region, int checksum, GenesisRomIdentity.Compatibility logic, GenesisRomIdentity.Compatibility assets, boolean prepare, String note) {
        return new Profile(id, label, 1048576L, sha1, sha256, crc, "GM T-70246 -00", region, checksum, logic, assets, prepare, note);
    }

    private RomCompatibilityProfiles() {
    }

    public static List<Profile> exactProfiles() {
        return EXACT;
    }

    public static Profile findExact(GenesisRomIdentity.Result r) {
        for (Profile p : EXACT) {
            if (p.matches(r)) {
                return p;
            }
        }
        return null;
    }

    public static Profile findById(String id) {
        if (id == null) {
            return null;
        }
        for (Profile p : EXACT) {
            if (p.f63id.equals(id)) {
                return p;
            }
        }
        return null;
    }

    public static boolean looksLikeGameFamily(GenesisRomIdentity.Result r) {
        if (r == null || !r.hasSegaHeader) {
            return false;
        }
        String d = normalize(r.domesticTitle);
        String o = normalize(r.overseasTitle);
        String s = normalize(r.serial);
        return (GAME_TITLE.equals(d) || GAME_TITLE.equals(o)) && s.startsWith(SERIAL_PREFIX);
    }

    private static String normalize(String v) {
        return v == null ? "" : v.trim().replaceAll("\\s+", " ").toUpperCase();
    }
}
