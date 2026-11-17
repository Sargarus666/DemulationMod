package com.ahsim.demulation;

import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Collections;
import java.util.Map;
import java.util.WeakHashMap;

/* loaded from: classes2.dex */
final class GermanRomAddressMap {
    private static final Map<byte[], Boolean> EXACT_CACHE = Collections.synchronizedMap(new WeakHashMap());
    private static final String GERMAN_SHA256 = "7f11e502ba2f4b4cdeee82c4e22b5ba64f04433ef1e5de1346db7231c1bd2e30";
    static final int ROM_BYTES = 1048576;

    private GermanRomAddressMap() {
    }

    static boolean isExactGerman(byte[] rom) throws IOException {
        if (rom == null || rom.length != ROM_BYTES) {
            return false;
        }
        Boolean cached = EXACT_CACHE.get(rom);
        if (cached != null) {
            return cached.booleanValue();
        }
        boolean exact = GERMAN_SHA256.equals(sha256(rom));
        EXACT_CACHE.put(rom, Boolean.valueOf(exact));
        return exact;
    }

    static int fixed(byte[] rom, int canonical) throws IOException {
        if (!isExactGerman(rom)) {
            return canonical;
        }
        int delta = deltaFor(canonical);
        int physical = canonical + delta;
        if (physical < 0 || physical >= rom.length) {
            throw new IOException("German fixed-address bridge outside ROM: 0x" + Integer.toHexString(canonical));
        }
        return physical;
    }

    static byte[] copyFixed(byte[] rom, int canonical, int length) throws IOException {
        int physical = fixed(rom, canonical);
        if (length < 0 || physical > rom.length - length) {
            throw new IOException("German fixed range outside ROM: 0x" + Integer.toHexString(canonical));
        }
        byte[] out = new byte[length];
        System.arraycopy(rom, physical, out, 0, length);
        return out;
    }

    private static int deltaFor(int c) throws IOException {
        if (c == 40348 || c == 40374 || c == 40412 || c == 41948) {
            return 48;
        }
        if (c == 41084) {
            return -144;
        }
        if (c == 205938) {
            return -15144;
        }
        if (c == 267724) {
            return -14658;
        }
        if (c == 273104) {
            return -14552;
        }
        if (c == 679524) {
            return -13372;
        }
        if (c == 758546) {
            return -13540;
        }
        if (c == 853695) {
            return -13358;
        }
        if (c == 1043776) {
            return -20038;
        }
        if (c >= 4096 && c < 12288) {
            return -8;
        }
        if (c >= 12288 && c < 33898) {
            return -12;
        }
        if (c >= 33898 && c < 37680) {
            return 46;
        }
        if (c >= 37680 && c < 41986) {
            return 48;
        }
        if (c >= 41986 && c < 69632) {
            return 144;
        }
        if (c >= 73728 && c < 96852) {
            return -4;
        }
        if (c >= 96852 && c < 114688) {
            return 8;
        }
        if (c >= 131072 && c < 135168) {
            return 1428;
        }
        if (c >= 135168 && c < 139264) {
            return 1430;
        }
        if (c >= 139264 && c < 155648) {
            return 1528;
        }
        if (c >= 155648 && c < 159206) {
            return 1540;
        }
        if (c >= 159206 && c < 172032) {
            return 1584;
        }
        if (c >= 187604 && c < 205936) {
            return -15280;
        }
        if (c >= 205936 && c < 219392) {
            return -14998;
        }
        if (c >= 219392 && c < 225280) {
            return -14902;
        }
        if (c >= 225280 && c < 233472) {
            return -14896;
        }
        if (c >= 233472 && c < 241664) {
            return -14846;
        }
        if (c >= 241664 && c < 245760) {
            return -14830;
        }
        if (c >= 245760 && c < 258048) {
            return -14784;
        }
        if (c >= 258048 && c < 262144) {
            return -14844;
        }
        if (c >= 262144 && c < 266240) {
            return -14808;
        }
        if (c >= 266240 && c < 268002) {
            return -14804;
        }
        if (c >= 268002 && c < 269128) {
            return -14654;
        }
        if (c >= 269128 && c < 269660) {
            return -14656;
        }
        if (c >= 269660 && c < 270166) {
            return -14654;
        }
        if (c >= 270166 && c < 271132) {
            return -14652;
        }
        if (c >= 271132 && c < 271308) {
            return -14618;
        }
        if (c >= 271308 && c < 272140) {
            return -14614;
        }
        if (c >= 272140 && c < 272694) {
            return -14572;
        }
        if (c >= 272694 && c < 273232) {
            return -14554;
        }
        if (c >= 273232 && c < 274432) {
            return -14530;
        }
        if (c >= 274432 && c < 294912) {
            return -14116;
        }
        if (c >= 294912 && c < 327680) {
            return -14120;
        }
        if (c >= 327680 && c < 330472) {
            return -14120;
        }
        if (c >= 330472 && c < 339754) {
            return -14098;
        }
        if (c >= 339754 && c < 421888) {
            return -14096;
        }
        if (c >= 421888 && c < 665624) {
            return -14128;
        }
        if (c >= 666620 && c < 679182) {
            return -13424;
        }
        if (c >= 679182 && c < 679652) {
            return -13382;
        }
        if (c >= 679652 && c < 682392) {
            return -13366;
        }
        if (c >= 682392 && c < 696320) {
            return -13364;
        }
        if (c >= 757760 && c < 761856) {
            return -12898;
        }
        if (c >= 761856 && c < 800190) {
            return -12912;
        }
        if (c >= 800190 && c < 811622) {
            return -12948;
        }
        if (c >= 811622 && c < 818290) {
            return -12858;
        }
        if (c >= 818290 && c < 818522) {
            return -12862;
        }
        if (c >= 818522 && c < 818940) {
            return -12862;
        }
        if (c >= 818940 && c < 823296) {
            return -12864;
        }
        if (c >= 844502 && c < 853695) {
            return -13358;
        }
        if (c >= 913098 && c < 968302) {
            return -23130;
        }
        if (c >= 979000 && c < 983372) {
            return -24672;
        }
        if (c >= 992502 && c < 993380) {
            return -27322;
        }
        if (c >= 1001662 && c < 1040772) {
            return -20034;
        }
        if (c >= 1040772 && c < 1044204) {
            return -20044;
        }
        if (c == 71984) {
            return 190;
        }
        if (c == 95220) {
            return -4;
        }
        if (c == 111226) {
            return 8;
        }
        if (c == 665624) {
            return -14128;
        }
        if (c == 666180) {
            return -13404;
        }
        throw new IOException("German fixed-address bridge has no mapping for 0x" + Integer.toHexString(c));
    }

    private static String sha256(byte[] data) throws IOException {
        try {
            MessageDigest d = MessageDigest.getInstance("SHA-256");
            byte[] hash = d.digest(data);
            char[] hex = "0123456789abcdef".toCharArray();
            char[] out = new char[hash.length * 2];
            for (int i = 0; i < hash.length; i++) {
                int v = hash[i] & 255;
                out[i * 2] = hex[v >>> 4];
                out[(i * 2) + 1] = hex[v & 15];
            }
            return new String(out);
        } catch (NoSuchAlgorithmException e) {
            throw new IOException("SHA-256 unavailable", e);
        }
    }
}
