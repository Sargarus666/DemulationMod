package com.ahsim.demulation;

import com.ahsim.demulation.DuneHackR82Probe;
import com.ahsim.demulation.RomCompatibilityProfiles;
import java.io.IOException;
import java.io.InputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Locale;
import java.util.zip.CRC32;

/* loaded from: classes2.dex */
public final class GenesisRomIdentity {
    private static final int HEADER_END = 512;
    private static final int ROM_PROBE_END = 576;

    public enum Compatibility {
        VERIFIED,
        CANDIDATE,
        UNVERIFIED,
        INCOMPATIBLE
    }

    public enum Recognition {
        EXACT_PROFILE,
        GAME_FAMILY_CANDIDATE,
        UNRECOGNIZED
    }

    public static final class Result {
        public Compatibility assetCompatibility;
        public boolean basePreparationSupported;
        public int computedHeaderChecksum;
        public String consoleName;
        public String copyright;
        public String crc32;
        public String domesticTitle;
        public boolean hasSegaHeader;
        public boolean headerChecksumValid;
        public String ioSupport;
        public Compatibility logicCompatibility;
        public String overseasTitle;
        public String preparationNote;
        public String profileId;
        public String profileLabel;
        public DuneHackR82Probe.Result r82Probe;
        public Recognition recognition;
        public String regionRaw;
        public String serial;
        public String sha1;
        public String sha256;
        public long size;
        public int storedHeaderChecksum;
    }

    private GenesisRomIdentity() {
    }

    public static Result identify(InputStream input) throws IOException {
        if (input == null) {
            throw new IOException("ROM stream is unavailable");
        }
        MessageDigest sha1 = digest("SHA-1");
        MessageDigest sha256 = digest("SHA-256");
        CRC32 crc32 = new CRC32();
        byte[] header = new byte[ROM_PROBE_END];
        byte[] buffer = new byte[RazorVramPatternLoader.METATILE_BANK_BYTES];
        long position = 0;
        int checksum = 0;
        int checksumHigh = -1;
        while (true) {
            int count = input.read(buffer);
            if (count < 0) {
                break;
            }
            if (count != 0) {
                sha1.update(buffer, 0, count);
                sha256.update(buffer, 0, count);
                crc32.update(buffer, 0, count);
                for (int i = 0; i < count; i++) {
                    long absolute = i + position;
                    int value = buffer[i] & 255;
                    if (absolute < 576) {
                        header[(int) absolute] = buffer[i];
                    }
                    if (absolute >= 512) {
                        if (checksumHigh >= 0) {
                            checksum = ((checksumHigh << 8) + checksum + value) & 65535;
                            checksumHigh = -1;
                        } else {
                            checksumHigh = value;
                        }
                    }
                }
                position += count;
            }
        }
        if (checksumHigh >= 0) {
            checksum = ((checksumHigh << 8) + checksum) & 65535;
        }
        Result result = new Result();
        result.size = position;
        result.sha1 = hex(sha1.digest());
        result.sha256 = hex(sha256.digest());
        result.crc32 = String.format(Locale.US, "%08x", Long.valueOf(crc32.getValue()));
        result.hasSegaHeader = position >= 512 && ascii(header, 256, 272).startsWith("SEGA");
        if (result.hasSegaHeader) {
            result.consoleName = ascii(header, 256, 272);
            result.copyright = ascii(header, 272, 288);
            result.domesticTitle = ascii(header, 288, 336);
            result.overseasTitle = ascii(header, 336, 384);
            result.serial = ascii(header, 384, 398);
            result.storedHeaderChecksum = ((header[398] & 255) << 8) | (header[399] & 255);
            result.ioSupport = ascii(header, 400, 416);
            result.regionRaw = ascii(header, 496, 512);
            result.computedHeaderChecksum = checksum;
            result.headerChecksumValid = result.storedHeaderChecksum == result.computedHeaderChecksum;
        } else {
            result.consoleName = "";
            result.copyright = "";
            result.domesticTitle = "";
            result.overseasTitle = "";
            result.serial = "";
            result.ioSupport = "";
            result.regionRaw = "";
            result.storedHeaderChecksum = 0;
            result.computedHeaderChecksum = checksum;
            result.headerChecksumValid = false;
        }
        RomCompatibilityProfiles.Profile exact = RomCompatibilityProfiles.findExact(result);
        result.r82Probe = DuneHackR82Probe.inspect(header, result.size, result.sha256);
        if (exact != null) {
            result.recognition = Recognition.EXACT_PROFILE;
            result.profileId = exact.f63id;
            result.profileLabel = exact.displayLabel;
            result.logicCompatibility = exact.logicCompatibility;
            result.assetCompatibility = exact.assetCompatibility;
            result.basePreparationSupported = exact.basePreparationSupported;
            result.preparationNote = exact.preparationNote;
        } else if (result.r82Probe.recognized()) {
            result.recognition = Recognition.GAME_FAMILY_CANDIDATE;
            result.profileId = result.r82Probe.profileId();
            result.profileLabel = result.r82Probe.profileLabel();
            result.logicCompatibility = Compatibility.UNVERIFIED;
            result.assetCompatibility = Compatibility.UNVERIFIED;
            result.basePreparationSupported = false;
            result.preparationNote = "R82C family detected; gameplay and content adapters are not ready.";
        } else if (RomCompatibilityProfiles.looksLikeGameFamily(result)) {
            result.recognition = Recognition.GAME_FAMILY_CANDIDATE;
            result.profileId = "candidate:" + safeToken(result.serial);
            result.profileLabel = "Recognized game family / unverified revision";
            result.logicCompatibility = Compatibility.UNVERIFIED;
            result.assetCompatibility = Compatibility.CANDIDATE;
            result.basePreparationSupported = false;
            result.preparationNote = "This revision has not been audited for BASE preparation.";
        } else {
            result.recognition = Recognition.UNRECOGNIZED;
            result.profileId = "unrecognized";
            result.profileLabel = "Unrecognized ROM";
            result.logicCompatibility = Compatibility.INCOMPATIBLE;
            result.assetCompatibility = Compatibility.INCOMPATIBLE;
            result.basePreparationSupported = false;
            result.preparationNote = "";
        }
        return result;
    }

    private static MessageDigest digest(String name) throws IOException {
        try {
            return MessageDigest.getInstance(name);
        } catch (NoSuchAlgorithmException e) {
            throw new IOException("Required digest is not available: " + name, e);
        }
    }

    private static String ascii(byte[] data, int start, int end) {
        StringBuilder out = new StringBuilder(end - start);
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

    private static String safeToken(String value) {
        if (value == null || value.trim().isEmpty()) {
            return "unknown";
        }
        return value.trim().replaceAll("[^A-Za-z0-9._-]+", "_");
    }

    private static String hex(byte[] bytes) {
        char[] alphabet = "0123456789abcdef".toCharArray();
        char[] chars = new char[bytes.length * 2];
        for (int i = 0; i < bytes.length; i++) {
            int value = bytes[i] & 255;
            chars[i * 2] = alphabet[value >>> 4];
            chars[(i * 2) + 1] = alphabet[value & 15];
        }
        return new String(chars);
    }
}
