package com.ahsim.demulation;

import com.ahsim.demulation.RomCompatibilityProfiles;
import com.ahsim.demulation.RomRussianLocalizationAssetManifest;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Locale;
import java.util.Properties;

/* loaded from: classes2.dex */
final class RomOfficialRegionAssetVariants {

    static final class Expected {
        final int length;
        final String sha256;

        Expected(int length, String sha256) {
            this.length = length;
            this.sha256 = sha256;
        }
    }

    private RomOfficialRegionAssetVariants() {
    }

    static boolean sourceBoundProfile(String profileId) {
        return "dune_arrakis_germany_gm_t70246_00".equals(profileId);
    }

    static boolean manifestBoundAsset(String profileId, String path) {
        if (sourceBoundProfile(profileId)) {
            return true;
        }
        if (!RomWorldTacticalSpriteAssetManifest.CLASSIC_PURCHASE_ICONS.equals(path) || "dune_arrakis_usa_gm_t70246_00".equals(profileId)) {
            return false;
        }
        RomCompatibilityProfiles.Profile p = RomCompatibilityProfiles.findById(profileId);
        return p != null && p.basePreparationSupported;
    }

    private static boolean exactSupportedProfile(String profileId) {
        RomCompatibilityProfiles.Profile p = RomCompatibilityProfiles.findById(profileId);
        return p != null && p.basePreparationSupported;
    }

    private static boolean validClassicPack(byte[] data) {
        if (data == null) {
            return false;
        }
        if ((data.length != 17864 && data.length != 38192 && data.length != 163504 && data.length != 164280) || data.length < 16) {
            return false;
        }
        if (data[0] != 67 || data[1] != 80 || data[2] != 73) {
            return false;
        }
        if (data[3] != 67) {
            return false;
        }
        int version = ((data[4] & 255) << 8) | (data[5] & 255);
        int width = ((data[6] & 255) << 8) | (data[7] & 255);
        int height = (data[9] & 255) | ((data[8] & 255) << 8);
        int iconBytes = (data[11] & 255) | ((data[10] & 255) << 8);
        int structures = (data[13] & 255) | ((data[12] & 255) << 8);
        int units = (data[15] & 255) | ((data[14] & 255) << 8);
        if (width == 32 && height == 24 && iconBytes == 384 && structures == 19) {
            if (units == 27) {
                if (version == 1) {
                    return data.length == 17864;
                }
                if ((version != 2 && version != 3 && version != 4) || data.length < 24) {
                    return false;
                }
                int actions = ((data[16] & 255) << 8) | (data[17] & 255);
                int infoStructures = (data[19] & 255) | ((data[18] & 255) << 8);
                int infoUnits = (data[21] & 255) | ((data[20] & 255) << 8);
                if (actions == 6 && infoStructures == 19) {
                    if (infoUnits == 27) {
                        if (version == 2) {
                            int reserved = ((data[22] & 255) << 8) | (data[23] & 255);
                            return data.length == 38192 && reserved == 0;
                        }
                        if (data.length == (version == 4 ? 164280 : 163504) && data.length >= 32) {
                            int detailStructures = ((data[22] & 255) << 8) | (data[23] & 255);
                            int detailUnits = (data[25] & 255) | ((data[24] & 255) << 8);
                            int detailWidth = (data[27] & 255) | ((data[26] & 255) << 8);
                            int detailHeight = (data[29] & 255) | ((data[28] & 255) << 8);
                            int detailBytes = ((data[30] & 255) << 8) | (data[31] & 255);
                            if (detailStructures == 19 && detailUnits == 27 && detailWidth == 96 && detailHeight == 56) {
                                if (detailBytes == 2688) {
                                    if (version == 4) {
                                        int offset = 163504;
                                        int key = 0;
                                        while (true) {
                                            int height2 = height;
                                            if (key < 2) {
                                                int infoUnits2 = infoUnits;
                                                if ((data[offset] & 255) != 1 || (data[offset + 1] & 255) != 3 || (data[offset + 2] & 255) != 0 || (data[offset + 3] & 255) != key) {
                                                    break;
                                                }
                                                key++;
                                                offset += RomRuntimeWorldDataAssets.STRUCTURE_LAYOUT_TILE_OFFSETS;
                                                height = height2;
                                                infoUnits = infoUnits2;
                                            } else {
                                                return true;
                                            }
                                        }
                                        return false;
                                    }
                                    return true;
                                }
                            }
                            return false;
                        }
                        return false;
                    }
                }
                return false;
            }
        }
        return false;
    }

    static boolean matchesExtracted(String profileId, String path, byte[] data, int baseLength, String baseSha256) throws IOException {
        if (data == null) {
            return false;
        }
        if (RomWorldTacticalSpriteAssetManifest.CLASSIC_PURCHASE_ICONS.equals(path) && exactSupportedProfile(profileId) && !"dune_arrakis_usa_gm_t70246_00".equals(profileId)) {
            return validClassicPack(data);
        }
        if (!sourceBoundProfile(profileId)) {
            Expected v = expected(profileId, path, baseLength, baseSha256);
            return data.length == v.length && v.sha256.equalsIgnoreCase(sha256(data));
        }
        if (isVariableGermanContent(path)) {
            return validGermanContentLength(path, data.length);
        }
        int germanLength = germanFixedLength(path, baseLength);
        return data.length == baseLength || data.length == germanLength;
    }

    static boolean validSourceBoundLength(String path, int baseLength, int actualLength) {
        if (isVariableGermanContent(path)) {
            return validGermanContentLength(path, actualLength);
        }
        int germanLength = germanFixedLength(path, baseLength);
        return actualLength == baseLength || actualLength == germanLength;
    }

    static Expected expectedForInstall(File installRoot, String profileId, String path, int baseLength, String baseSha256) throws IOException {
        boolean lengthOk;
        if (!manifestBoundAsset(profileId, path)) {
            return expected(profileId, path, baseLength, baseSha256);
        }
        if (installRoot != null && installRoot.isDirectory()) {
            File manifest = new File(installRoot, "manifest.properties");
            if (!manifest.isFile()) {
                throw new IOException("Source-bound READY manifest is missing");
            }
            Properties p = new Properties();
            FileInputStream in = new FileInputStream(manifest);
            try {
                p.load(in);
                in.close();
                if (!profileId.equals(p.getProperty("source.profile", ""))) {
                    throw new IOException("Source-bound READY source profile mismatch");
                }
                RomCompatibilityProfiles.Profile exact = RomCompatibilityProfiles.findById(profileId);
                if (exact == null || !exact.basePreparationSupported || !exact.sha256.equalsIgnoreCase(p.getProperty("source.sha256", ""))) {
                    throw new IOException("Source-bound READY source fingerprint mismatch");
                }
                try {
                    int total = Integer.parseInt(p.getProperty("entries.total", "-1"));
                    for (int i = 0; i < total; i++) {
                        String prefix = String.format(Locale.US, "asset.%03d.", Integer.valueOf(i));
                        if (path.equals(p.getProperty(prefix + "path"))) {
                            try {
                                int length = Integer.parseInt(p.getProperty(prefix + "length", "-1"));
                                String sha = p.getProperty(prefix + "sha256", "").trim();
                                if (RomWorldTacticalSpriteAssetManifest.CLASSIC_PURCHASE_ICONS.equals(path)) {
                                    lengthOk = length == baseLength;
                                } else {
                                    lengthOk = validSourceBoundLength(path, baseLength, length);
                                }
                                if (!lengthOk || !isSha256(sha)) {
                                    throw new IOException("Source-bound READY asset declaration is invalid: " + path);
                                }
                                return new Expected(length, sha);
                            } catch (NumberFormatException e) {
                                throw new IOException("Source-bound READY asset length is invalid", e);
                            }
                        }
                    }
                    throw new IOException("Source-bound READY asset is not declared: " + path);
                } catch (NumberFormatException e2) {
                    throw new IOException("Source-bound READY manifest entry count is invalid", e2);
                }
            } finally {
            }
        } else {
            throw new IOException("Source-bound READY generation is unavailable");
        }
    }

    static Expected expected(String profileId, String path, int baseLength, String baseSha256) {
        RomRussianLocalizationAssetManifest.Entry ru;
        if ("translation_ru_shedevr_lipetsk_usa".equals(profileId)) {
            if (!"frontend/direct/title_font.bin".equals(path) && !"ending/font.bin".equals(path) && (ru = RomRussianLocalizationAssetManifest.find(path)) != null) {
                return new Expected(ru.length, ru.sha256);
            }
            if (RomOriginalContentAssetManifest.FRONTEND_EXACT_TEXT.equals(path)) {
                return new Expected(681, "b55b91afac8ab84f16078366f433da1132887d4702d1a167396b48bfb8ef3686");
            }
            if ("frontend/mission_sequence/loss_banner_patterns.bin".equals(path)) {
                return new Expected(672, "f792b7f860bb94e55760c0daa727d58d13ba96276a2b52f29a645c8e08e73ec1");
            }
            if ("frontend/mission_sequence/win_banner_patterns.bin".equals(path)) {
                return new Expected(864, "ca29ee114910211a89694fc2f0ebc2d93e89dc61a5b8f0b1269252ef04e4686b");
            }
            if ("tactical/static_patterns_922_2047.bin".equals(path)) {
                return new Expected(36032, "8c050a000eda8dcfcb555fbf9bde4d4405316819897c86558242ee91607c9fab");
            }
            if (RomAudioAssetManifest.SOURCE_PACK.equals(path)) {
                return new Expected(226000, "efdc235dca200546aba2495d1101ea0309d87f38b5b988358bfc8f205455a690");
            }
        }
        if ("dune_arrakis_europe_gm_t70246_00".equals(profileId)) {
            if ("frontend/ending_next_level_patterns.bin".equals(path)) {
                return new Expected(16224, "9a56e65eed913ac6349f150e97950f8b343b3c0b4130613cd84b500f5a984057");
            }
            if ("frontend/title_shared_patterns.bin".equals(path)) {
                return new Expected(28672, "55d517a4f65707d381c71a63d6a9641868ed73a20efffc06ae199f3a820320f2");
            }
            if ("frontend/logo_title_map.bin".equals(path)) {
                return new Expected(8192, "feaa6dd56a133f8f87a8c8e2c621ad54b090215bba28f5cdb900f59f67e6b772");
            }
            if ("tutorial/text/font.bin".equals(path)) {
                return new Expected(5408, "219821591ed977a5ea71a2d985a662cb1fa92a4e958048089b1c133f567286a4");
            }
            if ("ending/planet_patterns.bin".equals(path)) {
                return new Expected(16224, "9a56e65eed913ac6349f150e97950f8b343b3c0b4130613cd84b500f5a984057");
            }
        }
        return new Expected(baseLength, baseSha256);
    }

    private static int germanFixedLength(String path, int baseLength) {
        if ("frontend/ending_next_level_patterns.bin".equals(path)) {
            return 16224;
        }
        if ("frontend/password_patterns.bin".equals(path)) {
            return 12288;
        }
        if ("frontend/mission_sequence/loss_banner_patterns.bin".equals(path)) {
            return 480;
        }
        if ("frontend/mission_sequence/win_banner_patterns.bin".equals(path)) {
            return 1056;
        }
        if ("frontend/mentat/radnor_harkonnen_join_text.bin".equals(path)) {
            return 286;
        }
        if ("frontend/mentat/cyril_atreides_join_text.bin".equals(path)) {
            return 202;
        }
        if ("frontend/mentat/ammon_ordos_join_text.bin".equals(path)) {
            return 199;
        }
        if ("ending/planet_patterns.bin".equals(path)) {
            return 16224;
        }
        if (RomAudioAssetManifest.SOURCE_PACK.equals(path)) {
            return 218882;
        }
        if ("tutorial/scenes/scene00_patterns.bin".equals(path)) {
            return 12288;
        }
        if ("tutorial/scenes/scene00_plane0.delta".equals(path)) {
            return 4807;
        }
        if ("tutorial/scenes/scene01_patterns.bin".equals(path)) {
            return 20480;
        }
        if ("tutorial/scenes/scene01_plane0.delta".equals(path)) {
            return 6058;
        }
        if ("tutorial/scenes/scene03_patterns.bin".equals(path)) {
            return 12288;
        }
        if ("tutorial/scenes/scene04_patterns.bin".equals(path)) {
            return 22880;
        }
        if ("tutorial/scenes/scene04_plane0.delta".equals(path)) {
            return 410;
        }
        if ("tutorial/scenes/scene06_patterns.bin".equals(path)) {
            return 12288;
        }
        if ("tutorial/scenes/scene06_plane0.delta".equals(path)) {
            return 2468;
        }
        if ("tutorial/scenes/scene07_plane0.delta".equals(path)) {
            return 1417;
        }
        if ("tutorial/scenes/scene09_patterns.bin".equals(path)) {
            return 12288;
        }
        if ("tutorial/scenes/scene11_patterns.bin".equals(path)) {
            return DuneHackR82ScenarioRecordDecoder.MAX_RECORDS;
        }
        if ("tutorial/scenes/scene11_plane0.delta".equals(path)) {
            return 170;
        }
        return baseLength;
    }

    private static boolean isVariableGermanContent(String path) {
        return RomOriginalContentAssetManifest.FRONTEND_EXACT_TEXT.equals(path) || "content/mission/presentation_text_v1.bin".equals(path) || "content/tutorial/exact_text_v1.bin".equals(path) || "content/result/mission_result_data_v1.bin".equals(path) || "content/ending/ending_text_v1.bin".equals(path);
    }

    private static boolean validGermanContentLength(String path, int length) {
        if (RomOriginalContentAssetManifest.FRONTEND_EXACT_TEXT.equals(path)) {
            return length >= 36 && length <= 4096;
        }
        if ("content/mission/presentation_text_v1.bin".equals(path)) {
            return length >= 256 && length <= 65536;
        }
        if ("content/tutorial/exact_text_v1.bin".equals(path)) {
            return length >= 128 && length <= 16384;
        }
        if ("content/result/mission_result_data_v1.bin".equals(path)) {
            return length == 493;
        }
        if ("content/ending/ending_text_v1.bin".equals(path)) {
            return length >= 128 && length <= 8192;
        }
        return false;
    }

    private static boolean isSha256(String value) {
        return value != null && value.matches("(?i)[0-9a-f]{64}");
    }

    private static String sha256(byte[] data) throws IOException {
        try {
            MessageDigest digest = MessageDigest.getInstance("SHA-256");
            byte[] hash = digest.digest(data);
            StringBuilder out = new StringBuilder(64);
            for (byte b : hash) {
                out.append(String.format(Locale.US, "%02x", Integer.valueOf(b & 255)));
            }
            return out.toString();
        } catch (NoSuchAlgorithmException e) {
            throw new IOException("SHA-256 is unavailable", e);
        }
    }
}
