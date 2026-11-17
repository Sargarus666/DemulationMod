package com.ahsim.demulation;

import com.ahsim.demulation.GenesisRomIdentity;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.Locale;
import java.util.zip.InflaterInputStream;

/* loaded from: classes2.dex */
public final class OfficialEuropeRomLayoutAdapter {
    private static final int CANONICAL_RESOURCE_TABLE = 818290;
    private static final String CANONICAL_SHA256 = "e42443da8e6dc90b2c2d123424950cb5ad84d0ecaf4a5887b2fe23bf54616a32";
    public static final String GERMANY_PROFILE_ID = "dune_arrakis_germany_gm_t70246_00";
    private static final int GERMAN_TITLE_SCRATCH = 1044480;
    private static final int GERMAN_TITLE_SCRATCH_END = 1048576;
    private static final String PATCH_B64 = "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";
    public static final String PROFILE_ID = "dune_arrakis_europe_gm_t70246_00";
    private static final int RESOURCE13_MAP_POINTER = 818502;
    private static final int ROM_BYTES = 1048576;
    private static final int[][] SPANS = {new int[]{0, 12288, 0}, new int[]{12288, 181248, -4}, new int[]{181248, 746688, -8}, new int[]{746688, 800176, -46}, new int[]{800176, 812016, -82}, new int[]{812016, 818176, -86}, new int[]{818176, 818940, -90}, new int[]{818940, 1048576, -92}};

    private enum GermanLayout {
        CANONICAL,
        PAL_RELOCATED
    }

    private OfficialEuropeRomLayoutAdapter() {
    }

    public static InputStream openCanonical(InputStream raw, long knownSize, GenesisRomIdentity.Result identity) throws IOException {
        if (raw == null) {
            throw new IOException("ROM stream is unavailable");
        }
        if (identity == null || (!"dune_arrakis_europe_gm_t70246_00".equals(identity.profileId) && !"dune_arrakis_germany_gm_t70246_00".equals(identity.profileId))) {
            return raw;
        }
        try {
            byte[] source = readAll(raw, knownSize);
            byte[] canonical = "dune_arrakis_germany_gm_t70246_00".equals(identity.profileId) ? (byte[]) source.clone() : canonicalize(source, true);
            raw.close();
            return new ByteArrayInputStream(canonical);
        } catch (IOException | RuntimeException e) {
            try {
                raw.close();
            } catch (IOException e2) {
            }
            throw e;
        }
    }

    static byte[] canonicalize(byte[] source) throws IOException {
        return canonicalize(source, true);
    }

    static byte[] canonicalizeGerman(byte[] source) throws IOException {
        return canonicalize(source, false);
    }

    private static byte[] canonicalize(byte[] source, boolean requireEuropeFingerprint) throws IOException {
        if (source == null || source.length != 1048576) {
            throw new IOException("Official PAL retail ROM has unexpected size");
        }
        if (!requireEuropeFingerprint && detectGermanLayout(source) == GermanLayout.CANONICAL) {
            return (byte[]) source.clone();
        }
        byte[] out = new byte[1048576];
        for (int[] span : SPANS) {
            int start = span[0];
            int end = span[1];
            int delta = span[2];
            int src = start + delta;
            if (src < 0 || (end - start) + src > source.length) {
                throw new IOException("PAL relocation span is outside ROM");
            }
            System.arraycopy(source, src, out, start, end - start);
        }
        applyPointerPatch(out);
        if (requireEuropeFingerprint) {
            restoreVerifiedEuropePayloads(source, out);
        } else {
            restoreVerifiedGermanPayloads(source, out);
        }
        if (requireEuropeFingerprint) {
            String actual = sha256(out);
            if (!CANONICAL_SHA256.equals(actual)) {
                throw new IOException("Europe canonical layout fingerprint mismatch");
            }
        }
        return out;
    }

    private static GermanLayout detectGermanLayout(byte[] source) throws IOException {
        boolean canonical = validTitleResourceAtPointerField(source, RESOURCE13_MAP_POINTER);
        int palPointerField = sourceOffsetForCanonical(RESOURCE13_MAP_POINTER);
        boolean pal = palPointerField != RESOURCE13_MAP_POINTER && validTitleResourceAtPointerField(source, palPointerField);
        if (canonical && !pal) {
            return GermanLayout.CANONICAL;
        }
        if (pal && !canonical) {
            return GermanLayout.PAL_RELOCATED;
        }
        if (canonical && pal) {
            throw new IOException("German resource-13 layout probe is ambiguous");
        }
        throw new IOException("German resource-13 layout probe failed (canonical=" + pointerAt(source, RESOURCE13_MAP_POINTER) + ", pal=" + pointerAt(source, palPointerField) + ")");
    }

    private static String pointerAt(byte[] source, int field) {
        try {
            return String.format(Locale.US, "0x%06X", Integer.valueOf(u24(be32(source, field))));
        } catch (IOException e) {
            return "out-of-range";
        }
    }

    private static boolean validTitleResourceAtPointerField(byte[] source, int pointerField) {
        try {
            checkRange(source, pointerField, 4);
            int descriptor = u24(be32(source, pointerField));
            return titleDescriptorDeclaredBytes(source, descriptor) == 8192;
        } catch (IOException e) {
            return false;
        }
    }

    private static int titleDescriptorDeclaredBytes(byte[] source, int descriptor) throws IOException {
        int declared;
        checkRange(source, descriptor, 6);
        int p = descriptor;
        int total = 0;
        int entries = 0;
        while (true) {
            entries++;
            if (entries > 32) {
                throw new IOException("German title descriptor has too many entries");
            }
            int flags = be16(source, p);
            if (flags == 0) {
                return total;
            }
            int pointer = u24(be32(source, p + 2));
            p += 6;
            if ((32768 & flags) != 0) {
                declared = flags & 32767;
                if (declared <= 0) {
                    throw new IOException("German title compressed descriptor is empty");
                }
                compressedStreamInfo(source, pointer, declared, 65536, 65536);
            } else {
                declared = (flags & 32767) * 2;
                if (declared <= 0) {
                    throw new IOException("German title raw descriptor is empty");
                }
                checkRange(source, pointer, declared);
            }
            if (total > 8192 - declared) {
                throw new IOException("German title descriptor declared size changed");
            }
            total += declared;
            checkRange(source, p, 2);
        }
    }

    private static final class CompressedStreamInfo {
        final int compressedBytes;
        final int decodedBytes;

        CompressedStreamInfo(int compressedBytes, int decodedBytes) {
            this.compressedBytes = compressedBytes;
            this.decodedBytes = decodedBytes;
        }
    }

    private static final class GermanTitleDescriptor {
        final int descriptorOffset;
        final CompressedStreamInfo info0;
        final CompressedStreamInfo info1;
        final int stream0;
        final int stream1;

        GermanTitleDescriptor(int descriptorOffset, int stream0, int stream1, CompressedStreamInfo info0, CompressedStreamInfo info1) {
            this.descriptorOffset = descriptorOffset;
            this.stream0 = stream0;
            this.stream1 = stream1;
            this.info0 = info0;
            this.info1 = info1;
        }
    }

    private static void restoreVerifiedEuropePayloads(byte[] source, byte[] out) throws IOException {
        copyExact(source, 811576, out, 811658, 711);
        copyExact(source, 273658, out, 273666, 5408);
    }

    private static void restoreVerifiedGermanPayloads(byte[] source, byte[] out) throws IOException {
        GermanTitleDescriptor title = findGermanTitleDescriptor(source);
        int stream0 = GERMAN_TITLE_SCRATCH + 14;
        int stream1 = title.info0.compressedBytes + stream0;
        int end = title.info1.compressedBytes + stream1;
        if (end > 1048576) {
            throw new IOException("German PAL title payload does not fit audited scratch");
        }
        for (int i = GERMAN_TITLE_SCRATCH; i < 1048576; i++) {
            if ((out[i] & 255) != 255) {
                throw new IOException("German PAL title scratch is not padding");
            }
        }
        writeBe16(out, GERMAN_TITLE_SCRATCH, 36864);
        writeBe32(out, GERMAN_TITLE_SCRATCH + 2, stream0);
        writeBe16(out, GERMAN_TITLE_SCRATCH + 6, 36864);
        writeBe32(out, GERMAN_TITLE_SCRATCH + 8, stream1);
        writeBe16(out, GERMAN_TITLE_SCRATCH + 12, 0);
        copyExact(source, title.stream0, out, stream0, title.info0.compressedBytes);
        copyExact(source, title.stream1, out, stream1, title.info1.compressedBytes);
        writeBe32(out, RESOURCE13_MAP_POINTER, GERMAN_TITLE_SCRATCH);
        copyExact(source, 273658, out, 273666, 5408);
    }

    private static GermanTitleDescriptor findGermanTitleDescriptor(byte[] source) throws IOException {
        int rawPointerField = sourceOffsetForCanonical(RESOURCE13_MAP_POINTER);
        int descriptor = u24(be32(source, rawPointerField));
        checkRange(source, descriptor, 14);
        int flags0 = be16(source, descriptor);
        int stream0 = u24(be32(source, descriptor + 2));
        int flags1 = be16(source, descriptor + 6);
        int stream1 = u24(be32(source, descriptor + 8));
        int endFlags = be16(source, descriptor + 12);
        if ((flags0 & 32768) == 0 || (flags0 & 32767) != 4096 || (32768 & flags1) == 0 || (flags1 & 32767) != 4096 || endFlags != 0) {
            throw new IOException("German PAL resource-13 descriptor shape changed");
        }
        if (stream0 <= 0 || stream1 <= 0 || stream0 >= source.length || stream1 >= source.length) {
            throw new IOException("German PAL resource-13 stream pointer is outside ROM");
        }
        CompressedStreamInfo info0 = compressedStreamInfo(source, stream0, DuneHackR82ScenarioRecordDecoder.MAX_RECORDS, 9216, 12288);
        CompressedStreamInfo info1 = compressedStreamInfo(source, stream1, DuneHackR82ScenarioRecordDecoder.MAX_RECORDS, 9216, 12288);
        return new GermanTitleDescriptor(descriptor, stream0, stream1, info0, info1);
    }

    private static int sourceOffsetForCanonical(int canonicalOffset) throws IOException {
        for (int[] span : SPANS) {
            int start = span[0];
            int end = span[1];
            int delta = span[2];
            if (canonicalOffset >= start && canonicalOffset < end) {
                int sourceOffset = canonicalOffset + delta;
                if (sourceOffset < 0 || sourceOffset >= 1048576) {
                    throw new IOException("PAL canonical/source mapping is outside ROM");
                }
                return sourceOffset;
            }
        }
        throw new IOException("PAL canonical/source mapping not found");
    }

    private static int compressedStreamLength(byte[] source, int sourceOffset, int minDecodedBytes, int maxDecodedBytes, int maxCompressedBytes) throws IOException {
        return compressedStreamInfo(source, sourceOffset, minDecodedBytes, maxDecodedBytes, maxCompressedBytes).compressedBytes;
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x00e5, code lost:
    
        throw new java.io.IOException("PAL compressed payload decoded size changed");
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x006d, code lost:
    
        throw new java.io.IOException("PAL compressed short-copy range");
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0094, code lost:
    
        throw new java.io.IOException("PAL compressed absolute-copy range");
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x00f3, code lost:
    
        throw new java.io.IOException("PAL compressed long-copy range");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static com.ahsim.demulation.OfficialEuropeRomLayoutAdapter.CompressedStreamInfo compressedStreamInfo(byte[] r9, int r10, int r11, int r12, int r13) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 266
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ahsim.demulation.OfficialEuropeRomLayoutAdapter.compressedStreamInfo(byte[], int, int, int, int):com.ahsim.demulation.OfficialEuropeRomLayoutAdapter$CompressedStreamInfo");
    }

    private static int be16(byte[] data, int offset) throws IOException {
        checkRange(data, offset, 2);
        return ((data[offset] & 255) << 8) | (data[offset + 1] & 255);
    }

    private static int be32(byte[] data, int offset) throws IOException {
        checkRange(data, offset, 4);
        return ((data[offset] & 255) << 24) | ((data[offset + 1] & 255) << 16) | ((data[offset + 2] & 255) << 8) | (data[offset + 3] & 255);
    }

    private static int u24(int value) {
        return 16777215 & value;
    }

    private static void writeBe16(byte[] data, int offset, int value) throws IOException {
        checkRange(data, offset, 2);
        data[offset] = (byte) ((value >>> 8) & 255);
        data[offset + 1] = (byte) (value & 255);
    }

    private static void writeBe32(byte[] data, int offset, int value) throws IOException {
        checkRange(data, offset, 4);
        data[offset] = (byte) ((value >>> 24) & 255);
        data[offset + 1] = (byte) ((value >>> 16) & 255);
        data[offset + 2] = (byte) ((value >>> 8) & 255);
        data[offset + 3] = (byte) (value & 255);
    }

    private static void checkRange(byte[] data, int offset, int length) throws IOException {
        if (data == null || offset < 0 || length < 0 || offset > data.length - length) {
            throw new IOException("PAL compressed payload is outside ROM");
        }
    }

    private static void copyExact(byte[] source, int sourceOffset, byte[] out, int destinationOffset, int length) throws IOException {
        if (sourceOffset < 0 || destinationOffset < 0 || length < 0 || sourceOffset > source.length - length || destinationOffset > out.length - length) {
            throw new IOException("PAL verified payload repair is outside ROM");
        }
        System.arraycopy(source, sourceOffset, out, destinationOffset, length);
    }

    private static void applyPointerPatch(byte[] out) throws IOException {
        byte[] compressed = decodeBase64(PATCH_B64);
        ByteArrayOutputStream unpacked = new ByteArrayOutputStream(12288);
        InflaterInputStream in = new InflaterInputStream(new ByteArrayInputStream(compressed));
        try {
            byte[] buf = new byte[GenesisObjectArt.VRAM_PATTERN_COUNT];
            while (true) {
                int n = in.read(buf);
                if (n < 0) {
                    break;
                } else if (n > 0) {
                    unpacked.write(buf, 0, n);
                }
            }
            in.close();
            byte[] patch = unpacked.toByteArray();
            int[] cursor = {0};
            int count = readVarInt(patch, cursor);
            int pos = -1;
            for (int i = 0; i < count; i++) {
                pos += readVarInt(patch, cursor);
                if (pos < 0 || pos >= out.length || cursor[0] >= patch.length) {
                    throw new IOException("PAL pointer patch is malformed");
                }
                int i2 = cursor[0];
                cursor[0] = i2 + 1;
                out[pos] = patch[i2];
            }
            if (cursor[0] != patch.length) {
                throw new IOException("PAL pointer patch has trailing data");
            }
        } catch (Throwable th) {
            try {
                in.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    private static int readVarInt(byte[] data, int[] cursor) throws IOException {
        int value = 0;
        for (int shift = 0; cursor[0] < data.length && shift <= 28; shift += 7) {
            int i = cursor[0];
            cursor[0] = i + 1;
            int b = data[i] & 255;
            value |= (b & 127) << shift;
            if ((b & 128) == 0) {
                return value;
            }
        }
        throw new IOException("Bad varint");
    }

    private static byte[] decodeBase64(String text) throws IOException {
        char c;
        int[] table = new int[256];
        Arrays.fill(table, -1);
        for (int i = 0; i < "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".length(); i++) {
            table["ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".charAt(i)] = i;
        }
        ByteArrayOutputStream out = new ByteArrayOutputStream((text.length() * 3) / 4);
        int acc = 0;
        int bits = 0;
        for (int i2 = 0; i2 < text.length() && (c = text.charAt(i2)) != '='; i2++) {
            if (c >= 256 || table[c] < 0) {
                throw new IOException("Bad base64 data");
            }
            acc = (acc << 6) | table[c];
            bits += 6;
            if (bits >= 8) {
                bits -= 8;
                out.write((acc >>> bits) & 255);
            }
        }
        return out.toByteArray();
    }

    private static byte[] readAll(InputStream input, long knownSize) throws IOException {
        if (knownSize > 0 && knownSize != 1048576) {
            throw new IOException("Europe retail ROM has unexpected selected size");
        }
        ByteArrayOutputStream out = new ByteArrayOutputStream(1048576);
        byte[] buffer = new byte[RazorVramPatternLoader.METATILE_BANK_BYTES];
        int total = 0;
        while (true) {
            int n = input.read(buffer);
            if (n >= 0) {
                if (n != 0) {
                    total += n;
                    if (total > 1048576) {
                        throw new IOException("Europe retail ROM is too large");
                    }
                    out.write(buffer, 0, n);
                }
            } else {
                if (total != 1048576) {
                    throw new IOException("Europe retail ROM is truncated");
                }
                return out.toByteArray();
            }
        }
    }

    private static String sha256(byte[] data) throws IOException {
        try {
            MessageDigest d = MessageDigest.getInstance("SHA-256");
            byte[] hash = d.digest(data);
            char[] hex = "0123456789abcdef".toCharArray();
            char[] result = new char[hash.length * 2];
            for (int i = 0; i < hash.length; i++) {
                int v = hash[i] & 255;
                result[i * 2] = hex[v >>> 4];
                result[(i * 2) + 1] = hex[v & 15];
            }
            return new String(result);
        } catch (NoSuchAlgorithmException e) {
            throw new IOException("SHA-256 unavailable", e);
        }
    }
}
